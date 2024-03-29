"""Django_stu URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
from apps import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.login),
    path('show/', views.show, name="show"),
    path('exam/', views.exam, name="exam"),
    path('ceshi/', views.ceshi, name="ceshi"),
    path('mistakes/', views.mistakes, name="mistakes"),
    # path('insert_data/', views.insert_data),
    path('brokenline/<c_id>', views.brokenline,name='brokenline'),
    path('bbrokenline/', views.bbrokenline,name='bbrokenline'),
    path('download/', views.download,name='download'),
    path('listing/', views.listing,name='listing'),
    path('teacherlogin/', views.teacherlogin,name='teacherlogin'),
    path('show_teacher/', views.show_teacher,name='show_teacher'),
]
