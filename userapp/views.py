import email
from unicodedata import category
from urllib.request import Request
from django.shortcuts import redirect, render
from userapp.models import UserRegisterModel
from userapp.models import ServerComplaintsModel
from django.contrib import messages

# Create your views here.
def home1(request):
    return render(request,"main/home.html")
def social(request):
    c7=ServerComplaintsModel.objects.filter(Category='Facebook').last()
    c8=ServerComplaintsModel.objects.filter(Category='Whatsapp').last()
    c9=ServerComplaintsModel.objects.filter(Category='Instagram').last()
    # social=ServerComplaintsModel.objects.latest(Category='Facebook')
    # social1=ServerComplaintsModel.objects.filter(Category='Whatsapp').latest()
    # social2=ServerComplaintsModel.objects.filter(Category='Instagram').latest()

    return render(request,"main/social.html",{'c7':c7,'c8':c8,'c9':c9})
def bank(request):
    c4=ServerComplaintsModel.objects.filter(Category='State Bank of India').last()
    c5=ServerComplaintsModel.objects.filter(Category='Bank of Baroda').last()
    c6=ServerComplaintsModel.objects.filter(Category='Bank of India').last()
    return render(request,"main/bank.html",{'c4':c4,'c5':c5,'c6':c6})
def telecom(request):
    c1=ServerComplaintsModel.objects.filter(Category='Airtel').last()
    c2=ServerComplaintsModel.objects.filter(Category='BSNL').last()
    c3=ServerComplaintsModel.objects.filter(Category='Jio').last()

    return render(request,"main/tele.html",{'c1':c1,'c2':c2,'c3':c3})
def about(request):
    return render(request,"main/about.html")

def user_display(request):
    user_id=request.session["user_id"]
    if request.method=="POST":
        x = request.POST.get("category")
        desc=request.POST.get("desc")
        category=''
        if x=='Whatsapp' or x=='Facebook' or x=='Instagram':
            category='Social Media'
        elif x=='State Bank of India' or x=='Bank of India' or x=='Bank of Baroda':
            category='Bank'
        elif x=='Airtel' or x=='BSNL' or x=='Jio':
            category='Telecommmunication'
        else:
            print("valid")
        ServerComplaintsModel.objects.create(user_id=user_id,Category=x,Server_name=category,Description=desc)
    return render(request,"main/userdisplay.html")



def admin_login(request):
    return render(request,"admin/index.html")

def user(request):
    if request.method=="POST":
        print("valid")
        email=request.POST.get('Email')
        password=request.POST.get('Password')
        
        try:
           check=UserRegisterModel.objects.get(email=email,password=password)
           request.session["user_id"]=check.user_id
           messages.success(request,"successfully login")
           return redirect ('userdisplay')
        except: 
            messages.error(request,"invalid login") 
    return render (request,'main/user.html')


    
# def reg(request):
#     if request.method=="POST":
#         Fname=request.POST.get("Fname")
#         Lname=request.POST.get("Lname")
#         Email=request.POST.get("Email")
#         Password=request.POST.get("Password")

#         UserRegisterModel.objects.create(fname=Fname,lname=Lname,email=Email,password=Password)

#     return render(request,"main/sign-in.html") 


def reg(request):
   if request.method == "POST":
        Fname=request.POST.get("Fname")
        Lname=request.POST.get("Lname")
        Email=request.POST.get("Email")
        Password=request.POST.get("Password")
        # if len(Fname)>12:
        #     messages.error(request,"name should be less than 12 letters")
        # elif not Fname.isalpha():
        #     messages.error(request,"name should contain alphabets")
        # elif len(Lname)>12:
        #     messages.error(request,"name should be less than 12 letters")
        # elif not Lname.isalpha():
        #     messages.error(request,"name should contain alphabets")
        # elif 
        
        if  UserRegisterModel.objects.filter(email=Email).exists():
            
        
            messages.error(request,'Email Already Exists....')
        else:
            user=UserRegisterModel.objects.create(fname=Fname,lname=Lname,email=Email,password=Password)
            # user.save()
            messages.success(request, "registered successfully")
        
        
   return render(request,'main/sign-in.html') 

