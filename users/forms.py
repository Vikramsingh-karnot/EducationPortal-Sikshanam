from django import forms
from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .models import Teacher, Fybscit, Sybscit, Tybscit

# ------------------------------- Registration form --------------------------------

selectRole = [
    ('fybscit', 'FY BSc.IT'),
    ('sybscit', 'SY BSc.IT'),
    ('tybscit', 'TY BSc.IT'),
    ('professor', 'Professor')
]


class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()
    first_name = forms.CharField(min_length=2, max_length=20)
    last_name = forms.CharField(min_length=2, max_length=20)
    # role = forms.ChoiceField(widget=forms.RadioSelect, choices=selectRole)
    role = forms.CharField(label='Role', widget=forms.Select(choices=selectRole))

    class Meta:
        model = User
        fields = ['role', 'username', 'first_name', 'last_name', 'email', 'password1', 'password2']

# ----------------------------------  Teacher complete form --------------------------------------


class ComTeacher(forms.ModelForm):
    uid = forms.IntegerField()
    city = forms.CharField(min_length=2, max_length=20)

    class Meta:
        model = Teacher
        fields = ['uid', 'city']

# ----------------------------------  Fybscit complete form --------------------------------------


class ComFybscit(forms.ModelForm):
    uid = forms.IntegerField()
    city = forms.CharField(min_length=2, max_length=20)

    class Meta:
        model = Fybscit
        fields = ['uid', 'city']


# ----------------------------------  Sybscit complete form --------------------------------------


class ComSybscit(forms.ModelForm):
    uid = forms.IntegerField()
    city = forms.CharField(min_length=2, max_length=20)

    class Meta:
        model = Sybscit
        fields = ['uid', 'city']

# ----------------------------------  Tybscit complete form --------------------------------------


class ComTybscit(forms.ModelForm):
    uid = forms.IntegerField()
    city = forms.CharField(min_length=2, max_length=20)

    class Meta:
        model = Tybscit
        fields = ['uid', 'city']
