from django.shortcuts import render , redirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate , login , logout
from django.contrib import messages
from datas.models import *
from django.http import HttpResponseRedirect

# Create your views here.

def register(request):
    categ = categorie.objects.all()
    subcateg = sub_categorie.objects.all()
    contents = {
        'categorie': categ,
        'subcategorie': subcateg,
        }
    return render(request,"register.html",contents)

def register_user(request):
    if request.method == 'POST':
        firstname=request.POST['txtfirst']
        lastname=request.POST['txtlast']
        email=request.POST['usremail']
        username=request.POST['txtusr']
        password=request.POST['txtpass1']
        user=User.objects.create_user(first_name=firstname , last_name=lastname , email=email , username=username , password=password)
        user.save()
        print("user created")
        messages.success(request, 'User created successfully.')
        return redirect(signin)
    else:
        return redirect('register')

def signin(request):
    categ = categorie.objects.all()
    subcateg = sub_categorie.objects.all()
    contents = {
        'categorie': categ,
        'subcategorie': subcateg,
        }
    return render(request, 'singin.html',contents)

def login_user(request):
    if request.method == 'POST':
        username = request.POST['txtusr']
        password = request.POST['txtpass']
        user=authenticate(username=username , password = password)
        if user is not None:
            login(request,user)
            print("user login")
            if 'next' in request.POST:
                messages.success(request, 'Login successfully')
                return redirect(request.POST.get('next'))
                #return HttpResponseRedirect(request.POST.get('next'))
            else:
                messages.success(request, 'Login successfully')
                return redirect('/')
        else:
            print("no such user")
            messages.info(request, 'Incorrect username or password')
            return redirect(signin)
    else:
        return redirect(signin)

def signout(request):
    logout(request)
    return redirect(request.META['HTTP_REFERER'])
