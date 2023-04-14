from django.contrib.auth.models import User
from django.db import models


class Profile(models.Model):
    objects = None
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')

    def __str__(self):
        return f'{self.user.username} Profile'

# **************************** Teachers ****************************


class Teacher(models.Model):
    objects = None

    class Meta:
        verbose_name_plural = 'Teachers'

    uid = models.IntegerField(primary_key=True)
    city = models.CharField(max_length=20)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None)
    role = models.CharField(max_length=50, default='Teacher') # role of Teacher

    def __str__(self):
        return f'{self.uname}'

# ****************************  Fybscit *********************************


class Fybscit(models.Model):
    DoesNotExist = None
    objects = None

    class Meta:
        verbose_name_plural = 'Fybscit'

    uid = models.IntegerField(primary_key=True)
    city = models.CharField(max_length=20)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None)
    role = models.CharField(max_length=50, default='fyStudent')
    # subjects = models.ForeignKey(FYSem1, on_delete= models.SET_NULL)

    def __str__(self):
        return f'{self.uid}- {self.uname}'

# ****************************  Sybscit *********************************


class Sybscit(models.Model):
    DoesNotExist = None
    objects = None

    class Meta:
        verbose_name_plural = 'Sybscit'

    uid = models.IntegerField(primary_key=True)
    city = models.CharField(max_length=20)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None)
    role = models.CharField(max_length=50, default='syStudent')

    def __str__(self):
        return f'{self.uid}- {self.uname}'

# ****************************  Tybscit *********************************


class Tybscit(models.Model):
    DoesNotExist = None
    objects = None

    class Meta:
        verbose_name_plural = 'Tybscit'

    uid = models.IntegerField(primary_key=True)
    city = models.CharField(max_length=20)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None)
    role = models.CharField(max_length=50, default='tyStudent')

    def __str__(self):
        return f'{self.uid}- {self.uname}'
