from django.db import models
from django.contrib.auth.models import User
from users.models import Teacher, Fybscit, Sybscit, Tybscit  # foreign key for teacher uid in subjects
from django.utils import timezone
from django.urls import reverse


class Subject(models.Model):
    objects = None
    sid = models.CharField(max_length=6)
    sname = models.CharField(max_length=50)
    squote = models.TextField()
    simgurl = models.ImageField(default='default.jpg', upload_to='subject_pics')

    def __str__(self):
        return self.sname


# --------------------------------------------------- Fy Sem 1 subjects ----------------------------------------------

class FYSem1(models.Model):
    objects = None

    class Meta:
        verbose_name_plural = "FYSem1"

    subId = models.CharField(max_length=20, primary_key=True)
    subName = models.CharField(max_length=50)
    subTeacher = models.ManyToManyField(Teacher)
    subQuote = models.CharField(max_length=255)
    subImage = models.ImageField(default='default.jpg', upload_to='FY_Subjects_Images')
    subStudents = models.ManyToManyField(Fybscit)

    def __str__(self):
        return f'{self.subId}-{self.subName}'


# --------------------------------------------------- Sy Sem 3 subjects ----------------------------------------------

class SYSem3(models.Model):
    objects = None

    class Meta:
        verbose_name_plural = "SYSem3"

    subId = models.CharField(max_length=20, primary_key=True)
    subName = models.CharField(max_length=50)
    subTeacher = models.ManyToManyField(Teacher)
    subQuote = models.CharField(max_length=255)
    subImage = models.ImageField(default='default.jpg', upload_to='SY_Subjects_Images')
    subStudents = models.ManyToManyField(Sybscit)

    def __str__(self):
        return f'{self.subId}-{self.subName}'


# --------------------------------------------------- TY Sem 5 subjects ----------------------------------------------

class TYSem5(models.Model):
    objects = None

    class Meta:
        verbose_name_plural = "TYSem5"

    subId = models.CharField(max_length=20, primary_key=True)
    subName = models.CharField(max_length=50)
    subTeacher = models.ManyToManyField(Teacher)
    subQuote = models.CharField(max_length=255)
    subImage = models.ImageField(default='default.jpg', upload_to='TY_Subjects_Images')
    subStudents = models.ManyToManyField(Tybscit)

    def __str__(self):
        return f'{self.subId}-{self.subName}'


class FYPapers(models.Model):
    objects = None
    name = models.CharField(max_length=50)
    professor = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    paper = models.FileField(upload_to='paper')
    subjects = models.ForeignKey(FYSem1, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):
        return f'{self.name}-{self.professor}'


class SYPapers(models.Model):
    objects = None
    name = models.CharField(max_length=50)
    professor = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    paper = models.FileField(upload_to='paper')
    subjects = models.ForeignKey(FYSem1, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):
        return f'{self.name}-{self.professor}'


class TYPapers(models.Model):
    objects = None
    name = models.CharField(max_length=50)
    professor = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    paper = models.FileField(upload_to='paper')
    subjects = models.ForeignKey(FYSem1, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):
        return f'{self.name}-{self.professor}'


# ---------------------- FY Notes --------------------------------------

class FYNotes(models.Model):
    objects = None
    name = models.CharField(max_length=50)
    professor = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    note = models.FileField(upload_to='notes')
    subjects = models.ForeignKey(FYSem1, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):
        return f'{self.name}-{self.subjects}-{self.professor}'


# ---------------------- SY Notes --------------------------------------

class SYNotes(models.Model):
    objects = None
    name = models.CharField(max_length=50)
    professor = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    note = models.FileField(upload_to='notes')
    subjects = models.ForeignKey(SYSem3, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):
        return f'{self.name}-{self.subjects}-{self.professor}'


# ---------------------- TY Notes --------------------------------------

class TYNotes(models.Model):
    objects = None
    name = models.CharField(max_length=50)
    professor = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    note = models.FileField(upload_to='notes')
    subjects = models.ForeignKey(TYSem5, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):
        return f'{self.name}-{self.subjects}-{self.professor}'


# ------------------------------------------- FY-Notifications ----------------------------------------------
class CGNotifications(models.Model):
    objects = None
    title = models.CharField(max_length=100)
    content = models.TextField()  # textfield is unrestricted text
    date_posted = models.DateTimeField(default=timezone.now)  # taking the date default using timezone
    teacher = models.ForeignKey(User, on_delete=models.CASCADE)  # if the user is deleted then we want to delete the
    subjects = models.ForeignKey(FYSem1, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):  # created to make the Post table most descriptive
        return f'{self.title}-{self.subjects}-{self.teacher}'

    def get_absolute_url(self):
        return reverse('notes-detail', kwargs={'pk': self.pk})  # primary key of that new post created to detail page


# ------------------------------------------- SY-Notifications ----------------------------------------------

class SYNotifications(models.Model):
    objects = None
    title = models.CharField(max_length=100)
    content = models.TextField()  # textfield is unrestricted text
    date_posted = models.DateTimeField(default=timezone.now)  # taking the date default using timezone
    teacher = models.ForeignKey(User, on_delete=models.CASCADE)  # if the user is deleted then we want to delete the
    subjects = models.ForeignKey(SYSem3, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):  # created to make the Post table most descriptive
        return f'{self.title}-{self.subjects}-{self.teacher}'

    def get_absolute_url(self):
        return reverse('sy-notes-detail',
                       kwargs={'pk': self.pk})  # primary key of that new post created to detail page


# ------------------------------------------- TY-Notifications ----------------------------------------------

class TYNotifications(models.Model):
    objects = None
    title = models.CharField(max_length=100)
    content = models.TextField()  # textfield is unrestricted text
    date_posted = models.DateTimeField(default=timezone.now)  # taking the date default using timezone
    teacher = models.ForeignKey(User, on_delete=models.CASCADE)  # if the user is deleted then we want to delete the
    subjects = models.ForeignKey(TYSem5, on_delete=models.CASCADE, default=None, blank=True, null=True)

    def __str__(self):  # created to make the Post table most descriptive
        return f'{self.title}-{self.subjects}-{self.teacher}'

    def get_absolute_url(self):
        return reverse('ty-notes-detail', kwargs={'pk': self.pk})  # primary key of that new post created to detail page


# --------------------------------------------------- Lydia Week ----------------------------------------------

class LydiaMonday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class LydiaTuesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class LydiaWednesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class LydiaThursday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class LydiaFriday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class LydiaSaturday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Lydia Week ----------------------------------------------

# --------------------------------------------------- Rachana Week ----------------------------------------------

class RachanaMonday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RachanaTuesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RachanaWednesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RachanaThursday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RachanaFriday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RachanaSaturday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Rachana Week ----------------------------------------------


# --------------------------------------------------- Roy Week ----------------------------------------------

class RoyMonday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RoyTuesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RoyWednesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RoyThursday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RoyFriday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class RoySaturday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Roy Week ----------------------------------------------


# --------------------------------------------------- Melissa Week ----------------------------------------------

class MelissaMonday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class MelissaTuesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class MelissaWednesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class MelissaThursday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class MelissaFriday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class MelissaSaturday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Melissa Week ----------------------------------------------


# --------------------------------------------------- Ashok Week ----------------------------------------------

class AshokMonday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AshokTuesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AshokWednesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AshokThursday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AshokFriday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AshokSaturday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Ashok Week ----------------------------------------------

# --------------------------------------------------- Aaron Week ----------------------------------------------

class AaronMonday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AaronTuesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AaronWednesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AaronThursday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class AaronFriday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-l{self.Time}'


class AaronSaturday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Aaron Week ----------------------------------------------

# --------------------------------------------------- Subhash Week ----------------------------------------------

class SubhashMonday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SubhashTuesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SubhashWednesday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SubhashThursday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SubhashFriday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SubhashSaturday(models.Model):
    SubName = models.CharField(max_length=20, blank=True, null=True)
    uname = models.ForeignKey(User, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20, blank=True, null=True)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Subhash Week ----------------------------------------------


# --------------------------------------------------- FY Week ----------------------------------------------

class FyMonday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class FyTuesday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class FyWednesday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class FyThursday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class FyFriday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class FySaturday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Fy Week ----------------------------------------------


# --------------------------------------------------- SY Week ----------------------------------------------

class SyMonday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SyTuesday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SyWednesday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SyThursday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SyFriday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class SySaturday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


# --------------------------------------------------- End Sy Week ----------------------------------------------


# --------------------------------------------------- FY Week ----------------------------------------------

class TyMonday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class TyTuesday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class TyWednesday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class TyThursday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class TyFriday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'


class TySaturday(models.Model):
    SubName = models.CharField(max_length=20)
    SubTeacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, default=None, blank=True, null=True)
    SubStatus = models.CharField(max_length=20, choices=[('Active', 'Active'), ('cancelled', 'Cancelled')], blank=True,
                                 null=True)
    Time = models.CharField(max_length=20)

    def __str__(self):
        return f'{self.SubName}-{self.Time}'

# --------------------------------------------------- End Ty Week ----------------------------------------------
