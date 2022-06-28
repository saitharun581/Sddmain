"""Sddmain URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from Sddmain.settings import MEDIA_ROOT
from userapp import views
from adminapp import views as admin_views

from django.conf.urls.static import static
from django.conf import settings
urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.home1,name='home'),
    path('Socialmedia',views.social,name='social'),
    path('Bank',views.bank,name='bank'),
    path('Telecom',views.telecom,name='telecommunication'),
    path('About',views.about,name='about'),
    path('Admin-login',admin_views.admin_login,name='admin'),
    path('User',views.user,name='user'),
    path('Registration',views.reg,name='register'),
    path('Userdisplay',views.user_display,name='userdisplay'),


    #admin
    path('admin-home',admin_views.admin_home,name='adminhome'),
    path('admin-home',admin_views.admin_login,name='adminhome'),
    path('admin-social',admin_views.admin_social,name='adminsocial'),
    path('admin-bank',admin_views.admin_bank,name='adminbank'),
    path('admin-telecom',admin_views.admin_telecom,name='admintelecom'),
    path('admin-userdetails',admin_views.admin_userdetails,name='adminuserdetails'),
    path('image-upload',admin_views.admin_imageupload,name='imageuploader'), 
    path('facebook-complaints',admin_views.admin_facebook,name='facebook-complaints'), 
    path('whatsapp-complaints',admin_views.admin_whatsapp,name='whatsapp-complaints'), 
    path('instagram-complaints',admin_views.admin_instagram,name='instagram-complaints'), 
    path('state-bank-of-india-complaints',admin_views.admin_sbi,name='sbi-complaints'), 
    path('bank-of-india-complaints',admin_views.admin_boi,name='boi-complaints'), 
    path('bank-of-baroda-complaints',admin_views.admin_bob,name='bob-complaints'), 
    path('airtel-complaints',admin_views.admin_airtel,name='airtel-complaints'), 
    path('bsnl-complaints',admin_views.admin_bsnl,name='bsnl-complaints'), 
    path('jio-complaints',admin_views.admin_jio,name='jio-complaints'), 
    

      
    
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)