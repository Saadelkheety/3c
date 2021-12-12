from django.db import models

class Kid(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    name = models.CharField(max_length=512)
    email = models.EmailField(blank=True)
    phone_number = models.CharField(max_length=12)
    school = models.CharField(max_length=256, blank=True)
    age = models.CharField(default='9-12', max_length=100, blank=True)
    payment = models.CharField(max_length=256, blank=True)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['created']
