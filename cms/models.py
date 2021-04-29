import datetime

from django.db import models
from django import forms

from wagtail.core.models import Page
from wagtail.core.fields import RichTextField, StreamField
from wagtail.contrib.table_block.blocks import TableBlock
from wagtail.documents.blocks import DocumentChooserBlock
from wagtail.core import blocks
from wagtail.admin.edit_handlers import FieldPanel, PageChooserPanel, StreamFieldPanel, InlinePanel, MultiFieldPanel, FieldRowPanel
from wagtail.images.blocks import ImageChooserBlock
from wagtail.snippets.models import register_snippet
from wagtail.contrib.routable_page.models import RoutablePageMixin, route
from wagtail.contrib.forms.models import AbstractEmailForm, AbstractFormField
from wagtail.images.edit_handlers import ImageChooserPanel
from wagtail.search import index


from modelcluster.fields import ParentalKey, ParentalManyToManyField
from modelcluster.tags import ClusterTaggableManager

from taggit.models import TaggedItemBase, Tag as TaggitTag

from django.core.validators import MinValueValidator

class BlogIndexPage(RoutablePageMixin, Page):
    template = 'blog.html'
    description = models.CharField(max_length=255, blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('description', classname="full")
    ]

    def get_context(self, request, *args, **kwargs):
        context = super(BlogIndexPage, self).get_context(
            request, *args, **kwargs)
        context['posts'] = self.posts
        context['blog_page'] = self
        context['categories'] = self.get_categories()
        context['tags'] = self.get_tags()
        return context

    def get_posts(self):
        return PostPage.objects.descendant_of(self).live().order_by('-date')

    def get_categories(self):
        return BlogCategory.objects.all()

    def get_tags(self):
        return TaggitTag.objects.all()

    @route(r'^tag/(?P<tag>[-\w]+)/$')
    def post_by_tag(self, request, tag, *args, **kwargs):
        self.search_type = 'tag'
        self.search_term = tag
        self.posts = self.get_posts().filter(tags__slug=tag)
        return Page.serve(self, request, *args, **kwargs)

    @route(r'^category/(?P<category>[-\w]+)/$')
    def post_by_category(self, request, category, *args, **kwargs):
        self.search_type = 'category'
        self.search_term = category
        self.posts = self.get_posts().filter(categories__slug=category)
        return Page.serve(self, request, *args, **kwargs)

    @route(r'^$')
    def post_list(self, request, *args, **kwargs):
        self.posts = self.get_posts()
        return Page.serve(self, request, *args, **kwargs)

    # @route(r'^(\d{4})/$')
    # @route(r'^(\d{4})/(\d{2})/$')
    # @route(r'^(\d{4})/(\d{2})/(\d{2})/$')
    # def post_by_date(self, request, year, month=None, day=None, *args, **kwargs):
    #     self.posts = self.get_posts().filter(date__year=year)
    #     if month:
    #         self.posts = self.posts.filter(date__month=month)
    #         df = DateFormat(date(int(year), int(month), 1))
    #         self.search_term = df.format('F Y')
    #     if day:
    #         self.posts = self.posts.filter(date__day=day)
    #         self.search_term = date_format(date(int(year), int(month), int(day)))
    #     return Page.serve(self, request, *args, **kwargs)
    #
    # @route(r'^(\d{4})/(\d{2})/(\d{2})/(.+)/$')
    # def post_by_date_slug(self, request, year, month, day, slug, *args, **kwargs):
    #     post_page = self.get_posts().filter(slug=slug).first()
    #     if not post_page:
    #         raise Http404
    #     return Page.serve(post_page, request, *args, **kwargs)


#
class PostPage(Page):
    template = 'post.html'
    body = StreamField([
        ('heading', blocks.CharBlock(form_classname="full title")),
        ('paragraph', blocks.RichTextBlock()),
        ('image', ImageChooserBlock()),
        ('document', DocumentChooserBlock()),
        ('table', TableBlock()),
    ], blank=True)
    description = models.CharField(max_length=255, blank=True,)
    date = models.DateTimeField(
        verbose_name="start date", default=None, blank=True)
    header_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True, blank=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )
    categories = ParentalManyToManyField('BlogCategory', blank=True)
    tags = ClusterTaggableManager(through='BlogIndexPageTag', blank=True)

    search_fields = Page.search_fields + [
        index.SearchField('description'),
        index.SearchField('body'),
    ]

    content_panels = Page.content_panels + [
        MultiFieldPanel([
            FieldPanel('date'),
            FieldPanel('tags'),
            FieldPanel('categories', widget=forms.CheckboxSelectMultiple),
        ], heading="Post information"),
        ImageChooserPanel('header_image'),
        StreamFieldPanel('body'),
        FieldPanel('description', classname="full"),
        # InlinePanel('gallery_images', label="Gallery images"),
    ]

    settings_panels = Page.settings_panels + [
        FieldPanel('date'),
    ]

    @property
    def blog_page(self):
        return self.get_parent().specific

    def get_context(self, request, *args, **kwargs):
        context = super(PostPage, self).get_context(request, *args, **kwargs)
        context['blog_page'] = self.blog_page
        context['post'] = self
        return context


@register_snippet
class BlogCategory(models.Model):
    name = models.CharField(max_length=255)
    slug = models.SlugField(unique=True, max_length=80)

    panels = [
        FieldPanel('name'),
        FieldPanel('slug'),
    ]

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "Blog Category"
        verbose_name_plural = "Blog Categories"


class BlogIndexPageTag(TaggedItemBase):
    content_object = ParentalKey(PostPage, related_name='post_tags')


# @register_snippet
# class Tag(TaggitTag):
#     class Meta:
#         proxy = True


class FormField(AbstractFormField):
    page = ParentalKey('FormPage', on_delete=models.CASCADE, related_name='form_fields')


class FormPage(AbstractEmailForm):
    template = 'form.html'
    intro = RichTextField(blank=True)
    thank_you_text = RichTextField(blank=True)

    thank_you_page = models.ForeignKey(
        'wagtailcore.Page',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )

    def render_landing_page(self, request, form_submission=None, *args, **kwargs):
        if self.thank_you_page:
            url = self.thank_you_page.url
            # if a form_submission instance is available, append the id to URL
            # when previewing landing page, there will not be a form_submission instance
            if form_submission:
              url += '?id=%s' % form_submission.id
            return redirect(url, permanent=False)
        # if no thank_you_page is set, render default landing page
        return super().render_landing_page(request, form_submission, *args, **kwargs)

    content_panels = AbstractEmailForm.content_panels + [
        FieldPanel('intro', classname="full"),
        InlinePanel('form_fields', label="Form fields"),
        FieldPanel('thank_you_text', classname="full"),
        PageChooserPanel('thank_you_page'),
        MultiFieldPanel([
            FieldRowPanel([
                FieldPanel('from_address', classname="col6"),
                FieldPanel('to_address', classname="col6"),
            ]),
            FieldPanel('subject'),
        ], "Email Notification Config"),
    ]

    def get_form_fields(self):
        return self.form_fields.all()

# class PostPagetGalleryImage(Orderable):
#     page = ParentalKey(PostPage, on_delete=models.CASCADE, related_name='gallery_images')
#     image = models.ForeignKey(
#         'wagtailimages.Image', blank=True, null=True, on_delete=models.SET_NULL, related_name='+'
#     )
#     caption = models.CharField(blank=True, max_length=250)
#
#     panels = [
#         ImageChooserPanel('image'),
#         FieldPanel('caption'),
#     ]


class CoursesIndexPage(RoutablePageMixin, Page):
    template = 'courses.html'
    description = models.CharField(max_length=255, blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('description', classname="full")
    ]

    def get_context(self, request, *args, **kwargs):
        context = super(CoursesIndexPage, self).get_context(
            request, *args, **kwargs)
        context['courses'] = self.posts
        context['courses_page'] = self
        context['categories'] = self.get_categories()
        return context

    def get_posts(self):
        return CoursePage.objects.descendant_of(self).live().order_by('title')

    def get_courses_in_categories(self):
        courses = {}
        categories = self.get_categories()
        for category in categories:
            courses[category] = self.get_posts().filter(categories=category)
        return courses


    def get_categories(self):
        return CoursesCategory.objects.all()

    @route(r'^tag/(?P<tag>[-\w]+)/$')
    def post_by_tag(self, request, tag, *args, **kwargs):
        self.search_type = 'tag'
        self.search_term = tag
        self.posts = self.get_posts().filter(tags__slug=tag)
        return Page.serve(self, request, *args, **kwargs)

    @route(r'^category/(?P<category>[-\w]+)/$')
    def post_by_category(self, request, category, *args, **kwargs):
        self.search_type = 'category'
        self.search_term = category
        self.posts = self.get_posts().filter(categories__slug=category)
        return Page.serve(self, request, *args, **kwargs)

    @route(r'^$')
    def post_list(self, request, *args, **kwargs):
        self.posts = self.get_posts()
        return Page.serve(self, request, *args, **kwargs)


class CoursePage(Page):
    template = 'course.html'
    body = StreamField([
        ('heading', blocks.CharBlock(form_classname="full title")),
        ('paragraph', blocks.RichTextBlock()),
        ('image', ImageChooserBlock()),
        ('document', DocumentChooserBlock()),
        ('table', TableBlock()),
    ], blank=True)
    description = models.CharField(max_length=255, blank=True,)
    # regular_price =
    header_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True, blank=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )
    categories = ParentalManyToManyField('CoursesCategory', blank=True)
    tags = ClusterTaggableManager(through='CoursesIndexPageTag', blank=True)

    search_fields = Page.search_fields + [
        index.SearchField('description'),
        index.SearchField('body'),
    ]

    content_panels = Page.content_panels + [
        MultiFieldPanel([
            FieldPanel('tags'),
            FieldPanel('categories', widget=forms.CheckboxSelectMultiple),
        ], heading="Post information"),
        ImageChooserPanel('header_image'),
        StreamFieldPanel('body'),
        FieldPanel('description', classname="full"),
        # InlinePanel('gallery_images', label="Gallery images"),
    ]

    @property
    def courses_page(self):
        return self.get_parent().specific

    def get_context(self, request, *args, **kwargs):
        context = super(CoursePage, self).get_context(request, *args, **kwargs)
        context['courses_page'] = self.courses_page
        context['course'] = self
        return context


@register_snippet
class CoursesCategory(models.Model):
    name = models.CharField(max_length=255)
    slug = models.SlugField(unique=True, max_length=80)

    panels = [
        FieldPanel('name'),
        FieldPanel('slug'),
    ]

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = "Courses Category"
        verbose_name_plural = "Courses Categories"

class CoursesIndexPageTag(TaggedItemBase):
    content_object = ParentalKey(CoursePage, related_name='course_tags')




class MembershipsIndexPage(RoutablePageMixin, Page):
    template = 'memberships.html'
    description = models.CharField(max_length=255, blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('description', classname="full")
    ]

    def get_context(self, request, *args, **kwargs):
        context = super(MembershipsIndexPage, self).get_context(
            request, *args, **kwargs)
        context['memberships'] = self.get_memberships()
        context['memberships_page'] = self
        return context

    def get_memberships(self):
        return MembershipPage.objects.descendant_of(self).live().order_by('title')


class MembershipPage(Page):
    description = models.CharField(max_length=255, blank=True,)
    price = models.FloatField(default=0, validators=[MinValueValidator(0.0)])
    discount = models.FloatField(default=0, validators=[MinValueValidator(0.0)])
    hours = models.FloatField(default=0, validators=[MinValueValidator(0.0)])
    # regular_price =
    header_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True, blank=True,
        on_delete=models.SET_NULL,
        related_name='+',
    )

    search_fields = Page.search_fields + [
        index.SearchField('description')
    ]

    content_panels = Page.content_panels + [
        FieldPanel('description', classname="full"),
        ImageChooserPanel('header_image'),
        MultiFieldPanel([
            FieldPanel('price'),
            FieldPanel('discount'),
            FieldPanel('hours'),
        ], heading="Membersihip information"),

    ]
