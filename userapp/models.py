from distutils.command.upload import upload
import email
from operator import mod
from statistics import mode
from django.db import models
from django.forms import CharField, ImageField

# Create your models here.

class ServerImageModel(models.Model):
    server_name=models.CharField(max_length=100)
    server_image=models.ImageField(upload_to="images/", null=True)

    def __str__(self):
        return self.server_name

    class Meta:
        db_table="server_image"


class UserRegisterModel(models.Model):
    user_id=models.AutoField(primary_key=True)
    fname=models.CharField(max_length=100,help_text="enter first name")
    lname=models.CharField(max_length=100,help_text="enter last name")
    email=models.EmailField(max_length=100,help_text="enter email")
    password=models.CharField(max_length=100,help_text="enter password")
    
    class Meta:
        db_table="user_details"
    
    def __str__(self):
        return self.fname + ' ' + self.lname

class ServerComplaintsModel(models.Model):
    complaint_id=models.AutoField(primary_key=True)
    user_id=models.IntegerField()
    Category=models.CharField(max_length=100)
    Server_name=models.CharField(max_length=100)
    Description=models.TextField(max_length=300)
    Posted_Date=models.DateField(auto_now_add=True)

    class Meta:
        db_table="complaints_details"
    
    def __str__(self):
        return self.Category + ' ' + self.Server_name


