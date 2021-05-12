from django.db import models

class Teacher(models.Model):
    number = models.CharField(max_length=20)
    name = models.CharField(max_length=20)

class Grade(models.Model):
    classname = models.CharField(max_length=20)
    t_id = models.ForeignKey(Teacher,on_delete=models.CASCADE,null=True)

class Student(models.Model):
    number = models.CharField(max_length=20)
    name = models.CharField(max_length=20)
    g_id = models.ForeignKey(Grade,on_delete=models.CASCADE,null=True)

class calss(models.Model):
    name = models.CharField(max_length=20)

class xueqi(models.Model):
    xueqi = models.CharField(max_length=20,null=True)

class chengji(models.Model):
    cheng = models.IntegerField(null=True)
    s_id = models.ForeignKey(Student,on_delete=models.CASCADE)
    c_id = models.ForeignKey(calss,on_delete=models.CASCADE)
    x_id = models.ForeignKey(xueqi,on_delete=models.CASCADE,null=True)

