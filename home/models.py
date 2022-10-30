from django.db import models
from modelcluster.fields import ParentalKey
from django.db import models

from wagtail.core.models import Page
from wagtail.contrib.forms.models import AbstractEmailForm, AbstractFormField
from wagtail.core.fields import RichTextField
from wagtail.admin.edit_handlers import FieldPanel, PageChooserPanel, StreamFieldPanel, InlinePanel, MultiFieldPanel, FieldRowPanel
from wagtail.contrib.forms.panels import FormSubmissionsPanel
from wagtail import blocks
from wagtail.images.blocks import ImageChooserBlock
from wagtail.fields import StreamField


class LandingBanner(blocks.StructBlock):
    title = blocks.RichTextBlock(help_text="Dispalay as a heading bold text", form_classname="h2" , default="Online Coding for kids Not Just A Course Its A Learning Journey")
    description = blocks.RichTextBlock(help_text="Dispalay as a description text", default="Start your child's Online Coding Journey for only 999 EGP New Year's Offer!")
    hero_image = ImageChooserBlock(help_text="A hero image")


class FormField(AbstractFormField):
    page = ParentalKey('HomePage', on_delete=models.CASCADE, related_name='form_fields')
    def get_field_type(self):
        return self.field_type

class HomePage(AbstractEmailForm):
    template = 'index.html'
    body = RichTextField(blank=True)
    body_divs = StreamField([
    ('landing_banner', LandingBanner()),
        ], use_json_field=True, blank=True)

    thank_you_text = RichTextField(blank=True)
    form_title = models.CharField(max_length=255, blank=True)
    submit_button = models.CharField(max_length=255, default='Submit') 

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
        FormSubmissionsPanel(),
        FieldPanel('body_divs', classname="full"),
        FieldPanel('form_title', classname="title"),
        FieldPanel('submit_button', classname="submit_button"),
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