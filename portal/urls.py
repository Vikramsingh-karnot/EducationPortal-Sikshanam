from django.urls import path

from . import views
from .views import (
    CGTeacherListView, FYTeacherListView,
    CGTeacherDetailView, CGTeacherUpdateView, CGTeacherDeleteView, CGTeacherCreateView,
    SYTeacherListView, SYTeacherDetailView,
    SYTeacherUpdateView, SYTeacherDeleteView, SYTeacherCreateView, SYTeacherAllListView,
    TYTeacherListView, TYTeacherCreateView,
    TYTeacherDetailView, TYTeacherAllListView, TYTeacherDeleteView, TYTeacherUpdateView,
)

urlpatterns = [
    # path('home/', views.base, name='base'),
    path('home-teacher/', views.home_teacher, name='Portal-Home'),  # Teachers
    path('home-tybscit/', views.home_tybscit, name='Portal-Home-Tybscit'),  # TYBScIT
    path('home-fybscit/', views.home_fybscit, name='Portal-Home-Fybscit'),  # FYBScIT
    path('home-sybscit/', views.home_sybscit, name='Portal-Home-Sybscit'),  # SYBScIT
    path('Subject-Dashboard/<str:pk>', views.sdashboard, name='Portal-Dashboard'),
    path('timetable/', views.Timetable, name='Portal-Timetable'),  # Timetable
    path('', views.about, name='Portal-About'),
    path('home/', views.main, name='Portal-Main'),

    path('Professor/Fy/Monday/<str:pk>', views.FyMondayUpdate, name='FyMondayUpdate'),
    path('Professor/Fy/Tuesday/<str:pk>', views.FyTuesdayUpdate, name='FyTuesdayUpdate'),
    path('Professor/Fy/Wednesday/<str:pk>', views.FyWednesdayUpdate, name='FyWednesdayUpdate'),
    path('Professor/Fy/Thursday/<str:pk>', views.FyThursdayUpdate, name='FyThursdayUpdate'),
    path('Professor/Fy/Friday/<str:pk>', views.FyFridayUpdate, name='FyFridayUpdate'),
    path('Professor/Fy/Saturday/<str:pk>', views.FySaturdayUpdate, name='FySaturdayUpdate'),

    path('Professor/Sy/Monday/<str:pk>', views.SyMondayUpdate, name='SyMondayUpdate'),
    path('Professor/Sy/Tuesday/<str:pk>', views.SyTuesdayUpdate, name='SyTuesdayUpdate'),
    path('Professor/Sy/Wednesday/<str:pk>', views.SyWednesdayUpdate, name='SyWednesdayUpdate'),
    path('Professor/Sy/Thursday/<str:pk>', views.SyThursdayUpdate, name='SyThursdayUpdate'),
    path('Professor/Sy/Friday/<str:pk>', views.SyFridayUpdate, name='SyFridayUpdate'),
    path('Professor/Sy/Saturday/<str:pk>', views.SySaturdayUpdate, name='SySaturdayUpdate'),

    path('Professor/Ty/Monday/<str:pk>', views.TyMondayUpdate, name='TyMondayUpdate'),
    path('Professor/Ty/Tuesday/<str:pk>', views.TyTuesdayUpdate, name='TyTuesdayUpdate'),
    path('Professor/Ty/Wednesday/<str:pk>', views.TyWednesdayUpdate, name='TyWednesdayUpdate'),
    path('Professor/Ty/Thursday/<str:pk>', views.TyThursdayUpdate, name='TyThursdayUpdate'),
    path('Professor/Ty/Friday/<str:pk>', views.TyFridayUpdate, name='TyFridayUpdate'),
    path('Professor/Ty/Saturday/<str:pk>', views.TySaturdayUpdate, name='TySaturdayUpdate'),

    path('Professor/Upload/Paper', views.UploadPaper, name='Papers'),
    path('Professor/Upload/Notes', views.UploadNotes, name='Notes'),

    path('Professor/SendMails', views.sendMailTo, name='Mails'),
    path('Professor/SendAttachment', views.sendAttachmentTo, name='Attachment'),

    path('Student/SendMails', views.sendMailToTeacher, name='Mails-Student'),
    path('Student/SendAttachment', views.sendAttachmentToTeacher, name='Attachment-Student'),

    path('FY/Notification/', CGTeacherListView.as_view(), name='notes'),
    path('FY/Notification/new/', CGTeacherCreateView.as_view(), name='notes-create'),
    path('FY/Notification/<str:username>/', FYTeacherListView.as_view(), name='user-notes'),
    path('FY/Notification/Detail/<int:pk>', CGTeacherDetailView.as_view(), name='notes-detail'),
    path('FY/Notification/<int:pk>/Update/', CGTeacherUpdateView.as_view(), name='notes-update'),
    path('FY/Notification/<int:pk>/Delete/', CGTeacherDeleteView.as_view(), name='notes-delete'),

    path('SY/Notification/', SYTeacherListView.as_view(), name='sy-notes'),
    path('SY/Notification/new/', SYTeacherCreateView.as_view(), name='sy-notes-create'),
    path('SY/Notification/<str:username>/', SYTeacherAllListView.as_view(), name='sy-user-notes'),
    path('SY/Notification/Detail/<int:pk>', SYTeacherDetailView.as_view(), name='sy-notes-detail'),
    path('SY/Notification/<int:pk>/Update/', SYTeacherUpdateView.as_view(), name='sy-notes-update'),
    path('SY/Notification/<int:pk>/Delete/', SYTeacherDeleteView.as_view(), name='sy-notes-delete'),

    path('TY/Notification/', TYTeacherListView.as_view(), name='ty-notes'),
    path('TY/Notification/new/', TYTeacherCreateView.as_view(), name='ty-notes-create'),
    path('TY/Notification/<str:username>/', TYTeacherAllListView.as_view(), name='ty-user-notes'),
    path('TY/Notification/Detail/<int:pk>', TYTeacherDetailView.as_view(), name='ty-notes-detail'),
    path('TY/Notification/<int:pk>/Update/', TYTeacherUpdateView.as_view(), name='ty-notes-update'),
    path('TY/Notification/<int:pk>/Delete/', TYTeacherDeleteView.as_view(), name='ty-notes-delete'),

]
