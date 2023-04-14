from django.contrib import admin

from .forms import UserRegisterForm
from .models import Profile, Fybscit, Teacher, Sybscit, Tybscit
from django.contrib.auth.admin import UserAdmin

admin.site.register(Profile)  # registering the profile table in the admin database
admin.site.register(Fybscit)  # adding student table to the admin db
admin.site.register(Teacher)  # adding teacher table to the admin db
admin.site.register(Sybscit)
admin.site.register(Tybscit)