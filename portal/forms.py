from django import forms
from .models import LydiaMonday, FYPapers, FYNotes

selectRole = [
    ('student', 'Student'),
    ('professor', 'Professor')
]


class updateForm(forms.ModelForm):
    class Meta:
        model = LydiaMonday
        fields = ['SubName', 'SubStatus']


# ---------------------------------------- to upload papers -----------------------------------

class uploadPaperForm(forms.ModelForm):
    class Meta:
        model = FYPapers

        fields = ['name', 'professor','paper','subjects']


# ---------------------------------------- to upload notes -----------------------------------

class uploadNotesForm(forms.ModelForm):
    class Meta:
        model = FYNotes

        fields = ['name', 'professor', 'note',]


# ------------------------------------- teachers sending mails ---------------------------

selectClass = [
    ('fybscit', 'FY BSc.IT'),
    ('sybscit', 'SY BSc.IT'),
    ('tybscit', 'TY BSc.IT'),
]


class sendMail(forms.Form):
    to = forms.CharField(label='Send to', widget=forms.Select(choices=selectClass), required=True)
    subject = forms.CharField(required=True)
    message = forms.CharField(widget=forms.Textarea, required=True)


class sendAttachment(forms.Form):
    to = forms.CharField(label='Send to', widget=forms.Select(choices=selectClass), required=True)
    subject = forms.CharField(required=True)
    message = forms.CharField(widget=forms.Textarea, required=True)
    fileName = forms.FileField(required=True)


# ------------------------------------- teachers sending mails ---------------------------

selectTeacher = [
    ('lydia', 'Lydia Fernandes'),
    ('ashok', 'Ashok Bingi'),
    ('aaron', 'Aaron Johns'),
    ('roy', 'Roy Thomas'),
    ('subhash', 'Subhash Kumar'),
    ('melissa', 'Melissa Fernandes')
]


class sendAttachmentToTeachers(forms.Form):
    to = forms.CharField(label='Send to', widget=forms.Select(choices=selectTeacher), required=True)
    subject = forms.CharField(required=True)
    message = forms.CharField(widget=forms.Textarea, required=True)
    fileName = forms.FileField(required=True)


class sendMailToTeachers(forms.Form):
    to = forms.CharField(label='Send to', widget=forms.Select(choices=selectTeacher), required=True)
    subject = forms.CharField(required=True)
    message = forms.CharField(widget=forms.Textarea, required=True)
