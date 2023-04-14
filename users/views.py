from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .forms import UserRegisterForm, ComTeacher, ComFybscit, ComSybscit, ComTybscit


def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Your Account have been Created! Now you are able to login.{username}')
            role = request.POST.get('role')
            if role == 'fybscit':
                return redirect('completeFybscit')
            elif role == 'professor':
                return redirect('completeTeacher')
            elif role == 'sybscit':
                return redirect('completeSybscit')
            elif role == 'tybscit':
                return redirect('completeTybscit')
    else:
        form = UserRegisterForm()
        return render(request, 'users/register.html', {'form': form})


# ----------------------------- login view ----------------------------------------

def login(request):
    return redirect('login')


# ------------------------- profile view ----------------------------------------------

@login_required()
def profile(request):
    return render(request, 'users/profile.html')


# ---------------------------------  Views of fybscit form ------------------------------
@login_required()
def comFybscit(request):
    if request.method == 'POST':
        form = ComFybscit(request.POST)
        if form.is_valid():
            fybscit = form.save(commit=False)
            fybscit.uname = request.user
            fybscit.save()
            messages.success(request, f'Your Account has been created successfully!')
            return redirect('Portal-Home')
    else:
        form = ComFybscit()
        return render(request, 'users/complete_fybscit.html', {'form': form})


# ---------------------------------  Views of sybscit form ------------------------------
@login_required()
def comSybscit(request):
    if request.method == 'POST':
        form = ComSybscit(request.POST)
        if form.is_valid():
            sybscit = form.save(commit=False)
            sybscit.uname = request.user
            sybscit.save()
            messages.success(request, f'Your Account has been created successfully!')
            return redirect('Portal-Home')
    else:
        form = ComSybscit()
        return render(request, 'users/complete_sybscit.html', {'form': form})


# ---------------------------------  Views of tybscit form ------------------------------
@login_required()
def comTybscit(request):
    if request.method == 'POST':
        form = ComTybscit(request.POST)
        if form.is_valid():
            tybscit = form.save(commit=False)
            tybscit.uname = request.user
            tybscit.save()
            messages.success(request, f'Your Account has been created successfully!')
            return redirect('Portal-Home-Tybscit')
    else:
        form = ComTybscit()
        return render(request, 'users/complete_tybscit.html', {'form': form})

# ---------------------------------  Views of teacher form ------------------------------


@login_required()
def comTeacher(request):
    if request.method == 'POST':
        form = ComTeacher(request.POST)
        if form.is_valid():
            teacher = form.save(commit=False)
            teacher.uname = request.user
            teacher.save()
            messages.success(request, f'Your Account has been created successfully!')
            return redirect('Portal-Home')
    else:
        form = ComTeacher()
        return render(request, 'users/complete_teacher.html', {'form': form})
