from sre_constants import CATEGORY
from unicodedata import category
from django.shortcuts import redirect, render
from userapp.models import ServerImageModel
from userapp.models import UserRegisterModel
from userapp.models import ServerComplaintsModel
from django.contrib import messages
# Create your views here.

def admin_home(request):
    server=ServerComplaintsModel.objects.filter( Server_name='Social Media').count()
    server2=ServerComplaintsModel.objects.filter( Server_name='Bank').count()
    server3=ServerComplaintsModel.objects.filter( Server_name='Telecommmunication').count()
    user=UserRegisterModel.objects.all()
    

    return render(request,'admin/index.html',{'s':server,'s1':server2,'s2':server3,'u':user})

def admin_login(request):    
    if request.method == "POST":
        name = request.POST.get('username')
        password = request.POST.get('password')

        if name =='admin' and password =='admin': 
            messages.success(request,"login successfully")
            return redirect('adminhome')
        else:
            messages.error(request,"invalid login")
    return render(request,'main/admin-login.html')



def admin_social(request):
    count=ServerComplaintsModel.objects.filter(Category='Facebook').count()
    count2=ServerComplaintsModel.objects.filter(Category='Whatsapp').count()
    count3=ServerComplaintsModel.objects.filter(Category='Instagram').count()
    

    return render(request,'admin/socialmedia2.html',{'d':count,'d1':count2,'d2':count3})

def admin_bank(request):
    count4=ServerComplaintsModel.objects.filter(Category='State Bank of India').count()
    count5=ServerComplaintsModel.objects.filter(Category='Bank of India').count()
    count6=ServerComplaintsModel.objects.filter(Category='Bank of Baroda').count()
    
    # bank=ServerComplaintsModel.objects.filter(Category='State Bank of India').latest()
    # bank2=ServerComplaintsModel.objects.filter(Category='Bank of India').latest()
    # bank3=ServerComplaintsModel.objects.filter(Category='Bank of Baroda').latest()
    
    return render(request,'admin/bankserver2.html',{'d3':count4,'d4':count5,'d5':count6})

def admin_telecom(request):
    count7=ServerComplaintsModel.objects.filter(Category='Airtel').count()
    count8=ServerComplaintsModel.objects.filter(Category='BSNL').count()
    count9=ServerComplaintsModel.objects.filter(Category='Jio').count()
   
    # tele=ServerComplaintsModel.objects.filter(Category='Airtel').latest()
    # tele2=ServerComplaintsModel.objects.filter(Category='BSNL').latest()
    # tele3=ServerComplaintsModel.objects.filter(Category='Jio').latest()
    


    return render(request,'admin/telecom2.html',{'d6':count7,'d7':count8,'d8':count9})

def admin_imageupload(request):
    if request.method == 'POST' and request.FILES['serverimage']:
        name=request.POST.get("servername")
        image=request.FILES['serverimage']
        ServerImageModel.objects.create(server_name=name,server_image=image)

    return render(request,'admin/image-upload.html')

def admin_userdetails(request):
    user=UserRegisterModel.objects.all()
    return render(request,'admin/userdetails2.html',{'u':user})

def admin_facebook(request):

    f=ServerComplaintsModel.objects.filter(Category='Facebook')


    return render(request,'admin/facebook.html',{'f1':f})

def admin_whatsapp(request):
    w=ServerComplaintsModel.objects.filter(Category='Whatsapp')

    return render(request,'admin/whatsapp.html',{'w1':w})

def admin_instagram(request):
    i=ServerComplaintsModel.objects.filter(Category='Instagram')
    return render(request,'admin/instagram.html',{'i1':i})

def admin_sbi(request):
    s=ServerComplaintsModel.objects.filter(Category='State Bank of India')

    return render(request,'admin/sbi.html',{'s1':s})   

def admin_boi(request):
    b=ServerComplaintsModel.objects.filter(Category='Bank of India')

    return render(request,'admin/boi.html',{'b1':b})

def admin_bob(request):
    v=ServerComplaintsModel.objects.filter(Category='Bank of Baroda')
    return render(request,'admin/bob.html',{'v1':v})

def admin_airtel(request):
    a=ServerComplaintsModel.objects.filter(Category='Airtel')

    return render(request,'admin/airtel.html',{'a1':a})

def admin_bsnl(request):
    b=ServerComplaintsModel.objects.filter(Category='BSNL')

    return render(request,'admin/bsnl.html',{'b2':b})

def admin_jio(request):
    j=ServerComplaintsModel.objects.filter(Category='Jio')

    return render(request,'admin/jio.html',{'j1':j})

