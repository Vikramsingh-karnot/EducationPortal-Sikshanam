from abc import ABC
from django.shortcuts import render, redirect, get_object_or_404
from .models import (
    FYSem1, SYSem3, TYSem5, Fybscit, Sybscit, Tybscit, Teacher,
    FyMonday, FyTuesday, FyWednesday, FyThursday, FyFriday, FySaturday,
    SyMonday, SyTuesday, SyWednesday, SyThursday, SyFriday, SySaturday,
    TyMonday, TyTuesday, TyWednesday, TyThursday, TyFriday, TySaturday,
    LydiaMonday, LydiaTuesday, LydiaWednesday, LydiaThursday, LydiaFriday, LydiaSaturday,
    RachanaMonday, RachanaTuesday, RachanaWednesday, RachanaThursday, RachanaFriday, RachanaSaturday,
    RoyMonday, RoyTuesday, RoyWednesday, RoyThursday, RoyFriday, RoySaturday,
    MelissaMonday, MelissaTuesday, MelissaWednesday, MelissaThursday, MelissaFriday, MelissaSaturday,
    AaronMonday, AaronTuesday, AaronWednesday, AaronThursday, AaronFriday, AaronSaturday,
    AshokMonday, AshokTuesday, AshokWednesday, AshokThursday, AshokFriday, AshokSaturday,
    SubhashMonday, SubhashTuesday, SubhashWednesday, SubhashThursday, SubhashFriday, SubhashSaturday,
    FYNotes, SYNotes, TYNotes,
    FYPapers, SYPapers, TYPapers,
    CGNotifications, SYNotifications, TYNotifications,
)
from django.contrib.auth.decorators import login_required
from .forms import (
    updateForm, uploadPaperForm, uploadNotesForm,
    sendMail, sendAttachment,
    sendMailToTeachers, sendAttachmentToTeachers
)
from django.core import mail
from django.views.generic import (
    ListView,
    DetailView,
    CreateView,
    UpdateView,
    DeleteView
)
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.contrib.auth.models import User
from django.views.decorators.clickjacking import xframe_options_sameorigin


# from users.forms import UserLoginForm


# ---------------------------------------------------------------------------------------------------------------------
# ------------------------------------------ FY Notification -------------------------------------------------------------------
def notes(request):
    context = {
        'fysubInotes': CGNotifications.objects.all(),
    }
    return render(request, 'portal/ListNotes.html', context)


# ---------------------------------- Teacher List View ----------------------------------------------------
class CGTeacherListView(ListView):
    model = CGNotifications
    template_name = 'portal/ListNotes.html'  # <app>/<model>_<viewtype>./html
    context_object_name = 'fysubInotes'  # so that the program takes it as 'notification' and not as object list
    ordering = ['-date_posted']  # so that the latest posts are shown up on the page using '-' sign
    paginate_by = 5


# ---------------------------------- Teacher Create View ----------------------------------------------------


class CGTeacherCreateView(LoginRequiredMixin, CreateView):
    model = CGNotifications
    fields = ['title', 'content', 'subjects']  # fields for creating the new post

    @xframe_options_sameorigin
    def form_valid(self, form):
        form.instance.teacher = self.request.user
        # before submitting the form take the author from the instance and set it to the current logged in user
        return super().form_valid(form)  # running form_valid method on the parent class


# ---------------------------------- Teacher List View ----------------------------------------------------

class FYTeacherListView(ListView):
    model = CGNotifications  # creating model, so it asks what model to query inorder to create a list  <--- list view
    template_name = 'portal/ListNotes.html'  # <app>/<model>_<viewtype>./html
    context_object_name = 'fysubInotes'  # so that the program takes it as 'posts' and not as object list
    # for paginating the blog page
    paginate_by = 5

    def get_queryset(self):  # for viewing the posts of a particular user
        # if user exists then we capture it in 'user' else give a 404 error saying user does not exists
        user = get_object_or_404(User, username=self.kwargs.get('username'))
        return CGNotifications.objects.filter(teacher=user).order_by('-date_posted')
        # posts of a particular author is returned


# ---------------------------------- Teacher Detail View ----------------------------------------------------
class CGTeacherDetailView(DetailView):
    model = CGNotifications


# ---------------------------------- Teacher Update View ----------------------------------------------------

class CGTeacherUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView, ABC):
    model = CGNotifications
    fields = ['title', 'content']  # fields for creating the new post

    @xframe_options_sameorigin
    def form_valid(self, form):
        form.instance.teacher = self.request.user
        # before submitting the form take the author from the instance and set it to the current logged in user
        return super().form_valid(form)  # running form_valid method on the parent class

    @xframe_options_sameorigin
    def test_func(self):  # for the userpasstestmixin
        notes = self.get_object()
        if self.request.user == notes.teacher:  # checking if the teacher is as same as the one trying to update it
            return redirect('notes')
        else:
            return False


# ---------------------------------- Teacher Delete View ----------------------------------------------------

class CGTeacherDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView, ABC):
    model = CGNotifications
    success_url = '/'

    @xframe_options_sameorigin
    def test_func(self):
        notes = self.get_object()
        if self.request.user == notes.teacher:
            return redirect('notes')
        else:
            return False


# ---------------------------------------------------------------------------------------------------------------------
# ------------------------------------------ SY Notifications -------------------------------------------------------------------
def synotes(request):
    context = {
        'synotes': SYNotifications.objects.all(),
    }
    return render(request, 'portal/SYListNotes.html', context)


# ---------------------------------- Teacher List View ----------------------------------------------------
class SYTeacherListView(ListView):
    model = SYNotifications
    template_name = 'portal/SYListNotes.html'  # <app>/<model>_<viewtype>./html
    context_object_name = 'synotes'  # so that the program takes it as 'notification' and not as object list
    context_object_name_2 = 'fysubII'
    ordering = ['-date_posted']  # so that the latest posts are shown up on the page using '-' sign
    paginate_by = 5


# ---------------------------------- Teacher Create View ----------------------------------------------------

class SYTeacherCreateView(LoginRequiredMixin, CreateView):
    model = SYNotifications
    fields = ['title', 'content', 'subjects']  # fields for creating the new post

    @xframe_options_sameorigin
    def form_valid(self, form):
        form.instance.teacher = self.request.user
        # before submitting the form take the author from the instance and set it to the current logged in user
        return super().form_valid(form)  # running form_valid method on the parent class


# ---------------------------------- Teacher List View ----------------------------------------------------

class SYTeacherAllListView(ListView):
    model = SYNotifications  # creating model, so it asks what model to query inorder to create a list  <--- list view
    template_name = 'portal/SYListNotes.html'  # <app>/<model>_<viewtype>./html
    context_object_name = 'synotes'  # so that the program takes it as 'posts' and not as object list
    # for paginating the blog page
    paginate_by = 5

    def get_queryset(self):  # for viewing the posts of a particular user
        # if user exists then we capture it in 'user' else give a 404 error saying user does not exists
        user = get_object_or_404(User, username=self.kwargs.get('username'))
        return SYNotifications.objects.filter(teacher=user).order_by('-date_posted')
        # posts of a particular author is returned


# ---------------------------------- Teacher Detail View ----------------------------------------------------
class SYTeacherDetailView(DetailView):
    model = SYNotifications


# ---------------------------------- Teacher Update View ----------------------------------------------------

class SYTeacherUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView, ABC):
    model = SYNotifications
    fields = ['title', 'content']  # fields for creating the new post

    @xframe_options_sameorigin
    def form_valid(self, form):
        form.instance.teacher = self.request.user
        # before submitting the form take the author from the instance and set it to the current logged in user
        return super().form_valid(form)  # running form_valid method on the parent class

    @xframe_options_sameorigin
    def test_func(self):  # for the userpasstestmixin
        notes = self.get_object()
        if self.request.user == notes.teacher:  # checking if the teacher is as same as the one trying to update it
            return redirect('synotes')
        else:
            return False


# ---------------------------------- Teacher Delete View ----------------------------------------------------

class SYTeacherDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView, ABC):
    model = SYNotifications
    success_url = '/'

    @xframe_options_sameorigin
    def test_func(self):
        notes = self.get_object()
        if self.request.user == notes.teacher:
            return redirect('synotes')
        else:
            return False


# ----------------------------------------------------------------------------------------------------------
# ------------------------------------------ TY Notifications -----------------------------------------------------
# --------------
def tynotes(request):
    context = {
        'tynotes': TYNotifications.objects.all(),
    }
    return render(request, 'portal/TYListNotes.html', context)


# ---------------------------------- Teacher List View ----------------------------------------------------
class TYTeacherListView(ListView):
    model = TYNotifications
    template_name = 'portal/TYListNotes.html'  # <app>/<model>_<viewtype>./html
    context_object_name = 'tynotes'  # so that the program takes it as 'notification' and not as object list
    context_object_name_2 = 'fysubII'
    ordering = ['-date_posted']  # so that the latest posts are shown up on the page using '-' sign
    paginate_by = 5


# ---------------------------------- Teacher Create View ----------------------------------------------------

class TYTeacherCreateView(LoginRequiredMixin, CreateView):
    model = TYNotifications
    fields = ['title', 'content', 'subjects']  # fields for creating the new post

    @xframe_options_sameorigin
    def form_valid(self, form):
        form.instance.teacher = self.request.user
        # before submitting the form take the author from the instance and set it to the current logged in user
        return super().form_valid(form)  # running form_valid method on the parent class


# ---------------------------------- Teacher List View ----------------------------------------------------

class TYTeacherAllListView(ListView):
    model = TYNotifications  # creating model, so it asks what model to query inorder to create a list  <--- list view
    template_name = 'portal/TYListNotes.html'  # <app>/<model>_<viewtype>./html
    context_object_name = 'tynotes'  # so that the program takes it as 'posts' and not as object list
    # for paginating the blog page
    paginate_by = 5

    def get_queryset(self):  # for viewing the posts of a particular user
        # if user exists then we capture it in 'user' else give a 404 error saying user does not exists
        user = get_object_or_404(User, username=self.kwargs.get('username'))
        return SYNotifications.objects.filter(teacher=user).order_by('-date_posted')
        # posts of a particular author is returned


# ---------------------------------- Teacher Detail View ----------------------------------------------------
class TYTeacherDetailView(DetailView):
    model = TYNotifications


# ---------------------------------- Teacher Update View ----------------------------------------------------

class TYTeacherUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView, ABC):
    model = TYNotifications
    fields = ['title', 'content']  # fields for creating the new post

    @xframe_options_sameorigin
    def form_valid(self, form):
        form.instance.teacher = self.request.user
        # before submitting the form take the author from the instance and set it to the current logged in user
        return super().form_valid(form)  # running form_valid method on the parent class

    @xframe_options_sameorigin
    def test_func(self):  # for the userpasstestmixin
        notes = self.get_object()
        if self.request.user == notes.teacher:  # checking if the teacher is as same as the one trying to update it
            return redirect('tynotes')
        else:
            return False


# ---------------------------------- Teacher Delete View ----------------------------------------------------

class TYTeacherDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView, ABC):
    model = TYNotifications
    success_url = '/'

    @xframe_options_sameorigin
    def test_func(self):
        notes = self.get_object()
        if self.request.user == notes.teacher:
            return redirect('tynotes')
        else:
            return False


# ------------------------------------- upload papers ------------------------------------

def UploadPaper(request):
    if request.method == 'POST':
        form = uploadPaperForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('Notes')
    else:
        form = uploadPaperForm()
    return render(request, 'portal/upload.html', {'form': form, 'Paper': 'Paper'})


# ------------------------------------- upload notes ------------------------------------

def UploadNotes(request):
    # try:
    #     if Fybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:  # id for the fy Student
    #             return False
    # except Fybscit.DoesNotExist:
    #     try:
    #         if Sybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
    #             return False
    #     except Sybscit.DoesNotExist:
    #         try:
    #             if Tybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
    #                 return False
    #         except Tybscit.DoesNotExist:
    #             if Teacher.objects.get(uname_id=request.user.id).uname_id == request.user.id:
    #                 teacher_user_id = Teacher.objects.get(uname_id=request.user.id).uname_id  # id for the Teacher
    #                 teacher_uid = Teacher.objects.get(uname_id=request.user.id).uid  # for the uid of teachers
    #                 if teacher_user_id == request.user.id:
    #                     get_role = Teacher.objects.get(uname_id=request.user.id)
    #                     if get_role.role == 'Teacher':
    #                         # for n in FYNotes.objects.all():
    #                         #     if teacher_uid == FYNotes.objects.filter(professor=teacher_uid):
    #                         #         FYNotes.objects.all()
    #                         context = {
    #                             'notes_teacher': FYNotes.objects.filter(professor=teacher_uid),
    #                             'notes_subjects': FYNotes.objects.filter()
    #                         }
    #                         return render(request, 'portal/upload.html', context)

    if request.method == 'POST':
        form = uploadNotesForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('Papers')
    else:
        form = uploadNotesForm()
    return render(request, 'portal/upload.html', {'form': form, 'Notes': 'Notes'})


# ------------------------------------- Send mails ------------------------------------
connection = mail.get_connection()
connection.open()


def sendMailTo(request):
    if request.method == "GET":
        form = sendMail()
    else:
        form = sendMail(request.POST)
        if form.is_valid():
            sendTo = form.cleaned_data['to']
            subject = form.cleaned_data['subject']
            message = form.cleaned_data['message']
            name = request.user.get_full_name()
            teacher_subject = name + " - " + subject
            if sendTo == 'fybscit':
                try:
                    for i in Fybscit.objects.all():
                        to = i.uname.email
                        emailfy = mail.EmailMessage(teacher_subject,
                                                    message,
                                                    'shikshanam.academicportal@gmail.com',
                                                    [to],
                                                    connection=connection)
                        emailfy.send()
                    return render(request, 'portal/emails.html',
                                  {'form_teacher': form,
                                   'error_message': 'Sent email to FY BSc.IT'})
                except:
                    return render(request, 'portal/emails.html',
                                  {'form_teacher': form,
                                   'error_message': 'Please fill the fields appropriately'})
            elif sendTo == 'sybscit':
                try:
                    for i in Sybscit.objects.all():
                        to = i.uname.email
                        emailsy = mail.EmailMessage(teacher_subject,
                                                    message,
                                                    'shikshanam.academicportal@gmail.com',
                                                    [to],
                                                    connection=connection)
                        emailsy.send()
                    return render(request, 'portal/emails.html',
                                  {'form_teacher': form,
                                   'error_message': 'Sent email to SY BSc.IT'})
                except:
                    return render(request, 'portal/emails.html',
                                  {'form_teacher': form,
                                   'error_message': 'Please fill the fields appropriately'})

            elif sendTo == 'tybscit':
                try:
                    for i in Tybscit.objects.all():
                        to = i.uname.email
                        emailty = mail.EmailMessage(teacher_subject,
                                                    message,
                                                    'shikshanam.academicportal@gmail.com',
                                                    [to],
                                                    connection=connection)
                        emailty.send()
                    return render(request, 'portal/emails.html',
                                  {'form_teacher': form,
                                   'error_message': 'Sent email to TY BSc.IT'})
                except:
                    return render(request, 'portal/emails.html',
                                  {'form_teacher': form,
                                   'error_message': 'Please fill the fields appropriately'})
            return redirect('Mails')
    return render(request, 'portal/emails.html',
                  {'form_teacher': form,
                   'error_message': 'Please fill the fields appropriately'})


def sendAttachmentTo(request):
    if request.method == "GET":
        formA = sendAttachment()
    else:
        formA = sendAttachment(request.POST, request.FILES)
        if formA.is_valid():
            sendTo = formA.cleaned_data['to']
            subject = formA.cleaned_data['subject']
            message = formA.cleaned_data['message']
            file = request.FILES['fileName']
            name = request.user.get_full_name()
            teacher_subject = name + " - " + subject
            if sendTo == 'fybscit':
                try:
                    for i in Fybscit.objects.all():
                        to = i.uname.email
                        emailfy = mail.EmailMessage(teacher_subject,
                                                    message,
                                                    'shikshanam.academicportal@gmail.com',
                                                    [to],
                                                    connection=connection)
                        emailfy.attach(file.name, file.read(), file.content_type)
                        emailfy.send()
                    return render(request, 'portal/emails.html',
                                  {'form_attachment': formA,
                                   'error_message': 'Sent email to FY BSc.IT'})
                except:
                    return render(request, 'portal/emails.html',
                                  {'form_attachment': formA,
                                   'error_message': 'Either the attachment is too big or corrupt'})
            elif sendTo == 'sybscit':
                try:
                    for i in Sybscit.objects.all():
                        to = i.uname.email
                        emailsy = mail.EmailMessage(teacher_subject,
                                                    message,
                                                    'shikshanam.academicportal@gmail.com',
                                                    [to],
                                                    connection=connection)
                        emailsy.attach(file.name, file.read(), file.content_type)
                        emailsy.send()
                    return render(request, 'portal/emails.html',
                                  {'form_attachment': formA,
                                   'error_message': 'Sent email to SY BSc.IT'})
                except:
                    return render(request, 'portal/emails.html',
                                  {'form_attachment': formA,
                                   'error_message': 'Either the attachment is too big or corrupt'})
            elif sendTo == 'tybscit':
                try:
                    for i in Tybscit.objects.all():
                        to = i.uname.email
                        emailty = mail.EmailMessage(teacher_subject,
                                                    message,
                                                    'shikshanam.academicportal@gmail.com',
                                                    [to],
                                                    connection=connection)
                        emailty.attach(file.name, file.read(), file.content_type)
                        emailty.send()
                    return render(request, 'portal/emails.html',
                                  {'form_attachment': formA,
                                   'error_message': 'Sent email to TY BSc.IT'})
                except:
                    return render(request, 'portal/emails.html',
                                  {'form_attachment': formA,
                                   'error_message': 'Either the attachment is too big or corrupt'})
            return redirect('Attachment')
    return render(request, 'portal/emails.html', {'form_attachment': formA,
                                                  'error_message': 'Unable to send email. Please try again later'})


def sendAttachmentToTeacher(request):
    if request.method == "GET":
        form = sendAttachmentToTeachers()
    else:
        form = sendAttachmentToTeachers(request.POST, request.FILES)
        if form.is_valid():
            sendTo = form.cleaned_data['to']
            subject = form.cleaned_data['subject']
            message = form.cleaned_data['message']
            file = request.FILES['fileName']
            name = request.user.get_full_name()
            student_subject = name + " - " + subject

            for name in Teacher.objects.all():
                if sendTo == name.uname.username:
                    teacher_name = name.uname.first_name + " " + name.uname.last_name
                    mailTeacher = name.uname.email
                    to = mailTeacher
                    try:
                        email = mail.EmailMessage(student_subject,
                                                  message,
                                                  'shikshanam.academicportal@gmail.com',
                                                  [to], connection=connection)

                        email.attach(file.name, file.read(), file.content_type)
                        email.send()
                        return render(request, 'portal/emailToTeacher.html',
                                      {'form': form,
                                       'error_message': 'Sent email to %s' % teacher_name})
                    except:
                        return render(request, 'portal/emailToTeacher.html',
                                      {'form': form,
                                       'error_message': 'Either the attachment is too big or corrupt'})
            return redirect('Attachment-Student')
    return render(request, 'portal/emailToTeacher.html',
                  {'form': form,
                   'error_message': 'Unable to send email. Please try again later'})


def sendMailToTeacher(request):
    if request.method == "GET":
        form = sendMailToTeachers()
    else:
        form = sendMailToTeachers(request.POST)
        if form.is_valid():
            sendTo = form.cleaned_data['to']
            subject = form.cleaned_data['subject']
            message = form.cleaned_data['message']
            name = request.user.get_full_name()
            student_subject = name + " - " + subject

            for name in Teacher.objects.all():
                if sendTo == name.uname.username:
                    teacher_name = name.uname.first_name + " " + name.uname.last_name
                    mailTeacher = name.uname.email
                    to = mailTeacher
                    try:
                        email = mail.EmailMessage(student_subject,
                                                  message,
                                                  'shikshanam.academicportal@gmail.com',
                                                  [to], connection=connection)
                        email.send()
                        return render(request, 'portal/emailToTeacher.html',
                                      {'form_mail': form,
                                       'error_message': 'Sent email to %s' % teacher_name})
                    except:
                        return render(request, 'portal/emailToTeacher.html',
                                      {'form_mail': form,
                                       'error_message': 'Please fill the fields appropriately'})
            return redirect('Mails-Student')
    return render(request, 'portal/emailToTeacher.html',
                  {'form_mail': form,
                   'error_message': 'Unable to send email. Please try again later'})


connection.close()


# ------------------------------------- Dashboard ------------------------------------

@login_required()
def sdashboard(request, pk):
    try:
        if Fybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:  # id for the fy Student
            get_role = Fybscit.objects.get(uname_id=request.user.id)
            fysub = FYSem1.objects.get(subId=pk)
            if get_role.role == 'fyStudent':
                context = {
                    'title': 'Subject-Dashboard',
                    'fyNoties': FYNotes.objects.filter(subjects_id=fysub),
                    'fyPapers': FYPapers.objects.filter(subjects_id=fysub),
                    'fyNotification': CGNotifications.objects.filter(subjects_id=fysub),
                    'S': 'Student',
                    'selectedsub': fysub.subName,
                }
                return render(request, 'portal/sdashboard.html', context)

    except Fybscit.DoesNotExist:
        try:
            if Sybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                # return redirect('Portal-Timetable-SY')
                get_role = Sybscit.objects.get(uname_id=request.user.id)
                sysub = SYSem3.objects.get(subId=pk)
                syid = sysub.id
                if get_role.role == 'syStudent':
                    context = {
                        'title': 'Subject-Dashboard',
                        'SyNoties': SYNotes.objects.filter(subjects_id=syid),
                        'SyPapers': SYPapers.objects.filter(subjects_id=syid),
                        'SyNotification': SYNotifications.objects.filter(subjects_id=syid),
                        'S': 'Student',
                        'selectedsub': sysub.subName,
                    }
                    return render(request, 'portal/sdashboard.html', context)

        except Sybscit.DoesNotExist:
            try:
                if Tybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                    # return redirect('Portal-Timetable-TY')
                    get_role = Tybscit.objects.get(uname_id=request.user.id)
                    tysub = TYSem5.objects.get(subId=pk)
                    tyid = tysub.subId
                    if get_role.role == 'tyStudent':
                        context = {
                            'title': 'Subject-Dashboard',
                            'TyNoties': TYNotes.objects.filter(subjects_id=tyid),
                            'TyPapers': TYPapers.objects.filter(subjects_id=tyid),
                            'TyNotification': TYNotifications.objects.filter(subjects_id=tyid),
                            'S': 'Student',
                            'selectedsub': tysub.subName,
                        }
                        return render(request, 'portal/sdashboard.html', context)
            except Tybscit.DoesNotExist:
                if Teacher.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                    teacher_user_id = Teacher.objects.get(uname_id=request.user.id).uname_id  # id for the Teacher
                    teacher_uid = Teacher.objects.get(uname_id=request.user.id).uid  # for the uid of teachers
                    if teacher_user_id == request.user.id:
                        get_role = Teacher.objects.get(uname_id=request.user.id)
                        try:
                            if FYSem1.objects.get(subId=pk):
                                fysubname = FYSem1.objects.get(subId=pk)
                                fysub = FYSem1.objects.get(subId=pk).subId
                                if get_role.uid == 210101:
                                    context = {
                                        'title': 'Subject-Dashboard',
                                        'fyNoties': FYNotes.objects.filter(professor=210101),
                                        'fyPapers': FYPapers.objects.filter(professor=210101),
                                        'T': 'Teacher',
                                        'fyNotification': CGNotifications.objects.filter(subjects_id='SITS0201'),
                                        'selectedsub': fysubname.subName,
                                    }
                                    return render(request, 'portal/sdashboard.html', context)
                                elif get_role.uid == 210302:
                                    context = {
                                        'title': 'Subject-Dashboard',
                                        'fyNoties': FYNotes.objects.filter(professor=210302),
                                        'fyPapers': FYPapers.objects.filter(professor=210302),
                                        'fyNotification': CGNotifications.objects.filter(subjects_id=fysub),
                                        'T': 'Teacher',
                                        'selectedsub': fysubname.subName,
                                    }
                                    return render(request, 'portal/sdashboard.html', context)
                                elif get_role.uid == 210301:
                                    context = {
                                        'title': 'Subject-Dashboard',
                                        'fyNoties': FYNotes.objects.filter(professor=210301),
                                        'fyPapers': FYPapers.objects.filter(professor=210301),
                                        'fyNotification': CGNotifications.objects.filter(subjects_id='SITS0201'),
                                        'T': 'Teacher',
                                        'selectedsub': fysubname.subName,
                                    }
                                    return render(request, 'portal/sdashboard.html', context)
                                elif get_role.uid == 210105:
                                    context = {
                                        'title': 'Subject-Dashboard',
                                        'fyNoties': FYNotes.objects.filter(professor=210105),
                                        'fyPapers': FYPapers.objects.filter(professor=210105),
                                        'fyNotification': CGNotifications.objects.filter(subjects_id=fysub),
                                        'T': 'Teacher',
                                        'selectedsub': fysubname.subName,
                                    }
                                    return render(request, 'portal/sdashboard.html', context)
                                elif get_role.uid == 210104:
                                    context = {
                                        'title': 'Subject-Dashboard',
                                        'fyNoties': FYNotes.objects.filter(professor=210104),
                                        'fyPapers': FYPapers.objects.filter(professor=210104),
                                        'fyNotification': CGNotifications.objects.filter(subjects_id=fysub),
                                        'T': 'Teacher',
                                        'selectedsub': fysubname.subName,

                                    }
                                    return render(request, 'portal/sdashboard.html', context)
                                elif get_role.uid == 210103:
                                    context = {
                                        'title': 'Subject-Dashboard',
                                        'fyNoties': FYNotes.objects.filter(professor=210103),
                                        'fyPapers': FYPapers.objects.filter(professor=210103),
                                        'fyNotification': CGNotifications.objects.filter(subjects_id=fysub),
                                        'T': 'Teacher',
                                        'selectedsub': fysubname.subName,
                                    }
                                    return render(request, 'portal/sdashboard.html', context)
                                elif get_role.uid == 210005:
                                    context = {
                                        'title': 'Subject-Dashboard',
                                        'fyNoties': FYNotes.objects.filter(professor=210005),
                                        'fyPapers': FYPapers.objects.filter(professor=210005),
                                        'fyNotification': CGNotifications.objects.filter(subjects_id=fysub),
                                        'T': 'Teacher',
                                        'selectedsub': fysubname.subName,
                                    }
                                    return render(request, 'portal/sdashboard.html', context)
                        except FYSem1.DoesNotExist:
                            try:
                                if SYSem3.objects.get(subId=pk):
                                    sysub = SYSem3.objects.get(subId=pk)
                                    if get_role.uid == 210101:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': SYNotes.objects.filter(professor=210101),
                                            'fyPapers': SYPapers.objects.filter(professor=210101),
                                            'fyNotification': SYNotifications.objects.filter(subjects_id=sysub),
                                            'T': 'Teacher',
                                            'notes': SYNotifications.objects.all(),
                                            'selectedsub': sysub.subName,

                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210302:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': SYNotes.objects.filter(professor=210302),
                                            'fyPapers': SYPapers.objects.filter(professor=210302),
                                            'fyNotification': SYNotifications.objects.filter(subjects_id=sysub),
                                            'T': 'Teacher',
                                            'selectedsub': sysub.subName,

                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210301:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': SYNotes.objects.filter(professor=210301),
                                            'fyPapers': SYPapers.objects.filter(professor=210301),
                                            'fyNotification': SYNotifications.objects.filter(subjects_id=sysub),
                                            'T': 'Teacher',
                                            'selectedsub': sysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210105:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': SYNotes.objects.filter(professor=210105),
                                            'fyPapers': SYPapers.objects.filter(professor=210105),
                                            'fyNotification': SYNotifications.objects.filter(subjects_id=sysub),
                                            'T': 'Teacher',
                                            'selectedsub': sysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210104:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': SYNotes.objects.filter(professor=210104),
                                            'fyPapers': SYPapers.objects.filter(professor=210104),
                                            'fyNotification': SYNotifications.objects.filter(subjects_id=sysub),
                                            'T': 'Teacher',
                                            'selectedsub': sysub.subName,

                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210103:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': SYNotes.objects.filter(professor=210103),
                                            'fyPapers': SYPapers.objects.filter(professor=210103),
                                            'fyNotification': SYNotifications.objects.filter(subjects_id=sysub),
                                            'T': 'Teacher',
                                            'selectedsub': sysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210005:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': SYNotes.objects.filter(professor=210005),
                                            'fyPapers': SYPapers.objects.filter(professor=210005),
                                            'fyNotification': SYNotifications.objects.filter(subjects_id=sysub),
                                            'T': 'Teacher',
                                            'selectedsub': sysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                            except SYSem3.DoesNotExist:
                                if TYSem5.objects.get(subId=pk):
                                    tysub = TYSem5.objects.get(subId=pk)
                                    if get_role.uid == 210101:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': TYNotes.objects.filter(professor=210101),
                                            'fyPapers': TYPapers.objects.filter(professor=210101),
                                            'T': 'Teacher',
                                            'notes': TYNotifications.objects.all(),
                                            'selectedsub': tysub.subName,

                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210302:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': TYNotes.objects.filter(professor=210302),
                                            'fyPapers': TYPapers.objects.filter(professor=210302),
                                            'T': 'Teacher',
                                            'selectedsub': tysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210301:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': TYNotes.objects.filter(professor=210301),
                                            'fyPapers': TYPapers.objects.filter(professor=210301),
                                            'T': 'Teacher',
                                            'selectedsub': tysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210105:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': TYNotes.objects.filter(professor=210105),
                                            'fyPapers': TYPapers.objects.filter(professor=210105),
                                            'T': 'Teacher',
                                            'selectedsub': tysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210104:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': TYNotes.objects.filter(professor=210104),
                                            'fyPapers': TYPapers.objects.filter(professor=210104),
                                            'T': 'Teacher',
                                            'selectedsub': tysub.subName,

                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210103:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': TYNotes.objects.filter(professor=210103),
                                            'fyPapers': TYPapers.objects.filter(professor=210103),
                                            'T': 'Teacher',
                                            'selectedsub': tysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)
                                    elif get_role.uid == 210005:
                                        context = {
                                            'title': 'Subject-Dashboard',
                                            'fyNoties': TYNotes.objects.filter(professor=210005),
                                            'fyPapers': TYPapers.objects.filter(professor=210005),
                                            'T': 'Teacher',
                                            'selectedsub': tysub.subName,
                                        }
                                        return render(request, 'portal/sdashboard.html', context)


def FyMondayUpdate(request, pk):
    monday = FyMonday.objects.get(SubName=pk)
    form = updateForm(instance=monday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=monday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def FyTuesdayUpdate(request, pk):
    tuesday = FyTuesday.objects.get(SubName=pk)
    form = updateForm(instance=tuesday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=tuesday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def FyWednesdayUpdate(request, pk):
    wednesday = FyWednesday.objects.get(SubName=pk)
    form = updateForm(instance=wednesday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=wednesday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def FyThursdayUpdate(request, pk):
    thursday = FyThursday.objects.get(SubName=pk)
    form = updateForm(instance=thursday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=thursday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def FyFridayUpdate(request, pk):
    friday = FyFriday.objects.get(SubName=pk)
    form = updateForm(instance=friday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=friday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def FySaturdayUpdate(request, pk):
    saturday = FySaturday.objects.get(SubName=pk)
    form = updateForm(instance=saturday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=saturday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


################################################ Second year Update Form ############################

def SyMondayUpdate(request, pk):
    monday = SyMonday.objects.get(SubName=pk)
    form = updateForm(instance=monday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=monday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def SyTuesdayUpdate(request, pk):
    tuesday = SyTuesday.objects.get(SubName=pk)
    form = updateForm(instance=tuesday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=tuesday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def SyWednesdayUpdate(request, pk):
    wednesday = SyWednesday.objects.get(SubName=pk)
    form = updateForm(instance=wednesday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=wednesday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def SyThursdayUpdate(request, pk):
    thursday = SyThursday.objects.get(SubName=pk)
    form = updateForm(instance=thursday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=thursday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def SyFridayUpdate(request, pk):
    friday = SyFriday.objects.get(SubName=pk)
    form = updateForm(instance=friday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=friday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def SySaturdayUpdate(request, pk):
    saturday = SySaturday.objects.get(SubName=pk)
    form = updateForm(instance=saturday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=saturday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


################################################ Third year Update Form ############################

def TyMondayUpdate(request, pk):
    monday = TyMonday.objects.get(SubName=pk)
    form = updateForm(instance=monday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=monday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def TyTuesdayUpdate(request, pk):
    tuesday = TyTuesday.objects.get(SubName=pk)
    form = updateForm(instance=tuesday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=tuesday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def TyWednesdayUpdate(request, pk):
    wednesday = TyWednesday.objects.get(SubName=pk)
    form = updateForm(instance=wednesday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=wednesday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def TyThursdayUpdate(request, pk):
    thursday = TyThursday.objects.get(SubName=pk)
    form = updateForm(instance=thursday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=thursday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def TyFridayUpdate(request, pk):
    friday = TyFriday.objects.get(SubName=pk)
    form = updateForm(instance=friday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=friday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


def TySaturdayUpdate(request, pk):
    saturday = TySaturday.objects.get(SubName=pk)
    form = updateForm(instance=saturday)
    if request.method == 'POST':
        form = updateForm(request.POST, instance=saturday)
        if form.is_valid():
            form.save()
            return redirect('Portal-Timetable')
    context = {'form': form}
    return render(request, 'portal/timetable_form.html', context)


# ----------------------------------- FYBSCIT ---------------------------------------

@login_required()
def home_fybscit(request):
    fy_user_id = Fybscit.objects.get(uname_id=request.user.id).uname_id  # id for the fy Student

    if fy_user_id == request.user.id:
        get_role = Fybscit.objects.get(uname_id=request.user.id)
        if get_role.role == 'fyStudent':
            context = {
                'FYSem1': FYSem1.objects.all()
            }
            return render(request, 'portal/home.html', context)


# ----------------------------------- SYBSCIT ---------------------------------------
@login_required()
def home_sybscit(request):
    sy_user_id = Sybscit.objects.get(uname_id=request.user.id).uname_id  # id for the fy Student
    if sy_user_id == request.user.id:
        get_role = Sybscit.objects.get(uname_id=request.user.id)
        if get_role.role == 'syStudent':
            context = {
                'SYSem3': SYSem3.objects.all(),
                'sy_user_id': sy_user_id,
                'request': Sybscit.objects.get(uname_id=request.user.id).role
            }
            return render(request, 'portal/home.html', context)


# ----------------------------------- TYBSCIT ---------------------------------------
@login_required()
def home_tybscit(request):
    ty_user_id = Tybscit.objects.get(uname_id=request.user.id).uname_id  # id for the ty student

    if ty_user_id == request.user.id:
        get_role = Tybscit.objects.get(uname_id=request.user.id)
        if get_role.role == 'tyStudent':
            context = {
                'TYSem5': TYSem5.objects.all(),
                'ty': 'tyStudent'
            }
            return render(request, 'portal/home.html', context)


# ----------------------------------- Teacher ---------------------------------------
@login_required()
def home_teacher(request):
    try:
        if Sybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
            return redirect('Portal-Home-Sybscit')
    except Sybscit.DoesNotExist:
        try:
            if Fybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                return redirect('Portal-Home-Fybscit')
        except Fybscit.DoesNotExist:
            try:
                if Tybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                    return redirect('Portal-Home-Tybscit')
            except Tybscit.DoesNotExist:
                if Teacher.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                    teacher_user_id = Teacher.objects.get(uname_id=request.user.id).uname_id  # id for the Teacher
                    teacher_uid = Teacher.objects.get(uname_id=request.user.id).uid  # for the uid of teachers
                    if teacher_user_id == request.user.id:
                        get_role = Teacher.objects.get(uname_id=request.user.id)
                        if get_role.role == 'Teacher':
                            context = {
                                'FYSem1': FYSem1.objects.filter(subTeacher__uid=teacher_uid),
                                'SYSem3': SYSem3.objects.filter(subTeacher__uid=teacher_uid),
                                'TYSem5': TYSem5.objects.filter(subTeacher__uid=teacher_uid)
                            }
                            return render(request, 'portal/home.html', context)


def about(request):
    return render(request, 'portal/main.html',
                  {
                      'title': 'Main'
                  })

# def base(request):
#     try:
#         if Fybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:  # id for the fy Student
#             get_role = Fybscit.objects.get(uname_id=request.user.id)
#             if get_role.role == 'fyStudent':
#                 context = {
#                     'fy': 'fyStudent'
#                 }
#                 return render(request, 'portal/base.html', context)
#     except Fybscit.DoesNotExist:
#         try:
#             if Sybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
#                 # return redirect('Portal-Timetable-SY')
#                 get_role = Sybscit.objects.get(uname_id=request.user.id)
#                 if get_role.role == 'syStudent':
#                     context = {
#                         'sy': 'syStudent'
#                     }
#                     return render(request, 'portal/base.html', context)
#         except Sybscit.DoesNotExist:
#             try:
#                 if Tybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
#                     # return redirect('Portal-Timetable-TY')
#                     get_role = Tybscit.objects.get(uname_id=request.user.id)
#                     if get_role.role == 'tyStudent':
#                         context = {
#                             'ty': 'tyStudent'
#                         }
#                         return render(request, 'portal/base.html', context)
#             except Tybscit.DoesNotExist:
#                 if Teacher.objects.get(uname_id=request.user.id).uname_id == request.user.id:
#                     teacher_user_id = Teacher.objects.get(uname_id=request.user.id).uname_id  # id for the Teacher
#                     teacher_uid = Teacher.objects.get(uname_id=request.user.id).uid  # for the uid of teachers
#                     if teacher_user_id == request.user.id:
#                         context = {
#                             'teacher': 'teacher'
#                         }
#                         return render(request, 'portal/base.html', context)

@login_required()
def main(request):
    # return render(request, 'portal/home.html', {'title': 'Main'})
    return redirect('Portal-Home')


# -------------------------------------------- FY timetable ----------------------------------
@login_required()
def Timetable(request):
    try:
        if Fybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:  # id for the fy Student
            get_role = Fybscit.objects.get(uname_id=request.user.id)
            if get_role.role == 'fyStudent':
                context = {
                    'FyMonday': FyMonday.objects.all(),
                    'FyTuesday': FyTuesday.objects.all(),
                    'FyWednesday': FyWednesday.objects.all(),
                    'FyThursday': FyThursday.objects.all(),
                    'FyFriday': FyFriday.objects.all(),
                    'FySaturday': FySaturday.objects.all(),
                }
                return render(request, 'portal/timetable.html', context)
    except Fybscit.DoesNotExist:
        try:
            if Sybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                # return redirect('Portal-Timetable-SY')
                get_role = Sybscit.objects.get(uname_id=request.user.id)
                if get_role.role == 'syStudent':
                    context = {
                        'SyMonday': SyMonday.objects.all(),
                        'SyTuesday': SyTuesday.objects.all(),
                        'SyWednesday': SyWednesday.objects.all(),
                        'SyThursday': SyThursday.objects.all(),
                        'SyFriday': SyFriday.objects.all(),
                        'SySaturday': SySaturday.objects.all(),
                    }
                    return render(request, 'portal/timetable.html', context)
        except Sybscit.DoesNotExist:
            try:
                if Tybscit.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                    # return redirect('Portal-Timetable-TY')
                    get_role = Tybscit.objects.get(uname_id=request.user.id)
                    if get_role.role == 'tyStudent':
                        context = {
                            'TyMonday': TyMonday.objects.all(),
                            'TyTuesday': TyTuesday.objects.all(),
                            'TyWednesday': TyWednesday.objects.all(),
                            'TyThursday': TyThursday.objects.all(),
                            'TyFriday': TyFriday.objects.all(),
                            'TySaturday': TySaturday.objects.all(),
                        }
                        return render(request, 'portal/timetable.html', context)
            except Tybscit.DoesNotExist:
                if Teacher.objects.get(uname_id=request.user.id).uname_id == request.user.id:
                    teacher_user_id = Teacher.objects.get(uname_id=request.user.id).uname_id  # id for the Teacher
                    teacher_uid = Teacher.objects.get(uname_id=request.user.id).uid  # for the uid of teachers
                    if teacher_user_id == request.user.id:
                        get_role = Teacher.objects.get(uname_id=request.user.id)
                        if get_role.uid == 210101:
                            # return redirect('Portal-Timetable-Lydia')
                            context = {
                                'LydiaMonday': LydiaMonday.objects.all(),
                                'LydiaTuesday': LydiaTuesday.objects.all(),
                                'LydiaWednesday': LydiaWednesday.objects.all(),
                                'LydiaThursday': LydiaThursday.objects.all(),
                                'LydiaFriday': LydiaFriday.objects.all(),
                                'LydiaSaturday': LydiaSaturday.objects.all(),
                                'FyMon': FyMonday.objects.all(),
                                'FyTuesday': FyTuesday.objects.all(),
                                'FyWednesday': FyWednesday.objects.all(),
                                'FyThursday': FyThursday.objects.all(),
                                'FyFriday': FyFriday.objects.all(),
                                'FySaturday': FySaturday.objects.all(),
                                'SyMon': SyMonday.objects.all(),
                                'SyTuesday': SyTuesday.objects.all(),
                                'SyWednesday': SyWednesday.objects.all(),
                                'SyThursday': SyThursday.objects.all(),
                                'SyFriday': SyFriday.objects.all(),
                                'SySaturday': SySaturday.objects.all(),
                                'TyMon': TyMonday.objects.all(),
                                'TyTuesday': TyTuesday.objects.all(),
                                'TyWednesday': TyWednesday.objects.all(),
                                'TyThursday': TyThursday.objects.all(),
                                'TyFriday': TyFriday.objects.all(),
                                'TySaturday': TySaturday.objects.all()
                            }
                            return render(request, 'portal/timetable.html', context)
                        elif get_role.uid == 210302:
                            # return redirect('Portal-Timetable-Roy')
                            context = {
                                'RoyMonday': RoyMonday.objects.all(),
                                'RoyTuesday': RoyTuesday.objects.all(),
                                'RoyWednesday': RoyWednesday.objects.all(),
                                'RoyThursday': RoyThursday.objects.all(),
                                'RoyFriday': RoyFriday.objects.all(),
                                'RoySaturday': RoySaturday.objects.all(),
                                'FyMon': FyMonday.objects.all(),
                                'FyTuesday': FyTuesday.objects.all(),
                                'FyWednesday': FyWednesday.objects.all(),
                                'FyThursday': FyThursday.objects.all(),
                                'FyFriday': FyFriday.objects.all(),
                                'FySaturday': FySaturday.objects.all(),
                                'SyMon': SyMonday.objects.all(),
                                'SyTuesday': SyTuesday.objects.all(),
                                'SyWednesday': SyWednesday.objects.all(),
                                'SyThursday': SyThursday.objects.all(),
                                'SyFriday': SyFriday.objects.all(),
                                'SySaturday': SySaturday.objects.all(),
                                'TyMon': TyMonday.objects.all(),
                                'TyTuesday': TyTuesday.objects.all(),
                                'TyWednesday': TyWednesday.objects.all(),
                                'TyThursday': TyThursday.objects.all(),
                                'TyFriday': TyFriday.objects.all(),
                                'TySaturday': TySaturday.objects.all(),
                            }
                            return render(request, 'portal/timetable.html', context)
                        elif get_role.uid == 210301:
                            # return redirect('Portal-Timetable-Subhash')
                            context = {
                                'SubhashMonday': SubhashMonday.objects.all(),
                                'SubhashTuesday': SubhashTuesday.objects.all(),
                                'SubhashWednesday': SubhashWednesday.objects.all(),
                                'SubhashThursday': SubhashThursday.objects.all(),
                                'SubhashFriday': SubhashFriday.objects.all(),
                                'SubhashSaturday': SubhashSaturday.objects.all(),
                                'SyMon': SyMonday.objects.all(),
                                'SyTuesday': SyTuesday.objects.all(),
                                'SyWednesday': SyWednesday.objects.all(),
                                'SyThursday': SyThursday.objects.all(),
                                'SyFriday': SyFriday.objects.all(),
                                'SySaturday': SySaturday.objects.all(),
                                'TyMon': TyMonday.objects.all(),
                                'TyTuesday': TyTuesday.objects.all(),
                                'TyWednesday': TyWednesday.objects.all(),
                                'TyThursday': TyThursday.objects.all(),
                                'TyFriday': TyFriday.objects.all(),
                                'TySaturday': TySaturday.objects.all()
                            }
                            return render(request, 'portal/timetable.html', context)
                        elif get_role.uid == 210105:
                            # return redirect('Portal-Timetable-Melissa')
                            context = {
                                'MelissaMonday': MelissaMonday.objects.all(),
                                'MelissaTuesday': MelissaTuesday.objects.all(),
                                'MelissaWednesday': MelissaWednesday.objects.all(),
                                'MelissaThursday': MelissaThursday.objects.all(),
                                'MelissaFriday': MelissaFriday.objects.all(),
                                'MelissaSaturday': MelissaSaturday.objects.all(),
                                'FyMon': FyMonday.objects.all(),
                                'FyTuesday': FyTuesday.objects.all(),
                                'FyWednesday': FyWednesday.objects.all(),
                                'FyThursday': FyThursday.objects.all(),
                                'FyFriday': FyFriday.objects.all(),
                                'FySaturday': FySaturday.objects.all(),
                            }
                            return render(request, 'portal/timetable.html', context)
                        elif get_role.uid == 210104:
                            # return redirect('Portal-Timetable-Rachana')
                            context = {
                                'RachanaMonday': RachanaMonday.objects.all(),
                                'RachanaTuesday': RachanaTuesday.objects.all(),
                                'RachanaWednesday': RachanaWednesday.objects.all(),
                                'RachanaThursday': RachanaThursday.objects.all(),
                                'RachanaFriday': RachanaFriday.objects.all(),
                                'RachanaSaturday': RachanaSaturday.objects.all(),
                            }
                            return render(request, 'portal/timetable.html', context)
                        elif get_role.uid == 210103:
                            # return redirect('Portal-Timetable-Ashok')
                            context = {
                                'AshokMonday': AshokMonday.objects.all(),
                                'AshokTuesday': AshokTuesday.objects.all(),
                                'AshokWednesday': AshokWednesday.objects.all(),
                                'AshokThursday': AshokThursday.objects.all(),
                                'AshokFriday': AshokFriday.objects.all(),
                                'AshokSaturday': AshokSaturday.objects.all(),
                                'FyMon': FyMonday.objects.all(),
                                'FyTuesday': FyTuesday.objects.all(),
                                'FyWednesday': FyWednesday.objects.all(),
                                'FyThursday': FyThursday.objects.all(),
                                'FyFriday': FyFriday.objects.all(),
                                'FySaturday': FySaturday.objects.all(),
                                'SyMon': SyMonday.objects.all(),
                                'SyTuesday': SyTuesday.objects.all(),
                                'SyWednesday': SyWednesday.objects.all(),
                                'SyThursday': SyThursday.objects.all(),
                                'SyFriday': SyFriday.objects.all(),
                                'SySaturday': SySaturday.objects.all(),
                                'TyMon': TyMonday.objects.all(),
                                'TyTuesday': TyTuesday.objects.all(),
                                'TyWednesday': TyWednesday.objects.all(),
                                'TyThursday': TyThursday.objects.all(),
                                'TyFriday': TyFriday.objects.all(),
                                'TySaturday': TySaturday.objects.all(),
                            }
                            return render(request, 'portal/timetable.html', context)
                        elif get_role.uid == 210005:
                            # return redirect('Portal-Timetable-Aaron')
                            context = {
                                'AaronMonday': AaronMonday.objects.all(),
                                'AaronTuesday': AaronTuesday.objects.all(),
                                'AaronWednesday': AaronWednesday.objects.all(),
                                'AaronThursday': AaronThursday.objects.all(),
                                'AaronFriday': AaronFriday.objects.all(),
                                'AaronSaturday': AaronSaturday.objects.all(),
                                'FyMon': FyMonday.objects.all(),
                                'FyTuesday': FyTuesday.objects.all(),
                                'FyWednesday': FyWednesday.objects.all(),
                                'FyThursday': FyThursday.objects.all(),
                                'FyFriday': FyFriday.objects.all(),
                                'FySaturday': FySaturday.objects.all(),
                                'SyMon': SyMonday.objects.all(),
                                'SyTuesday': SyTuesday.objects.all(),
                                'SyWednesday': SyWednesday.objects.all(),
                                'SyThursday': SyThursday.objects.all(),
                                'SyFriday': SyFriday.objects.all(),
                                'SySaturday': SySaturday.objects.all(),
                                'TyMon': TyMonday.objects.all(),
                                'TyTuesday': TyTuesday.objects.all(),
                                'TyWednesday': TyWednesday.objects.all(),
                                'TyThursday': TyThursday.objects.all(),
                                'TyFriday': TyFriday.objects.all(),
                                'TySaturday': TySaturday.objects.all(),
                            }
                            return render(request, 'portal/timetable.html', context)
