from re import U
from django.contrib import admin
from .models import UserRegisterModel
from .models import ServerComplaintsModel
from .models import ServerImageModel

admin.site.register(UserRegisterModel)
admin.site.register(ServerComplaintsModel)
admin.site.register(ServerImageModel)
# Register your models here.
