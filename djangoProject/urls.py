from django.contrib import admin
from django.urls import path, include
from django.contrib.auth import views as auth_views
from users import views as user_views
from django.conf import settings
from django.conf.urls.static import static

# from users.forms import UserLoginForm

urlpatterns = [
    path('admin/', admin.site.urls),
    path('register/', user_views.register, name='Register'),
    path('profile/', user_views.profile, name='profile'),
    path('', include('portal.urls')),
    path('login/', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),     #authentication_form=UserLoginForm,
    path('password-reset/', auth_views.PasswordResetView.as_view(template_name='users/password_reset.html'),
         name='password_reset'),
    path('password-reset/done/',
         auth_views.PasswordResetDoneView.as_view(template_name='users/password_reset_done.html'),
         name='password_reset_done'),
    path('password-reset-confirm/<uidb64>/<token>/',
         auth_views.PasswordResetConfirmView.as_view(template_name='users/password_reset_confirm.html'),
         name='password_reset_confirm'),
    path('password-reset-complete/',
         auth_views.PasswordResetCompleteView.as_view(template_name='users/password_reset_complete.html'),
         name='password_reset_complete'),
    path('logout/', auth_views.LogoutView.as_view(template_name='users/logout.html'), name='logout'),
    path('complete_teacher/', user_views.comTeacher, name='completeTeacher'),
    path('complete_fybscit/', user_views.comFybscit, name='completeFybscit'),
    path('complete_sybscit/', user_views.comSybscit, name='completeSybscit'),
    path('complete_tybscit/', user_views.comTybscit, name='completeTybscit')
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
