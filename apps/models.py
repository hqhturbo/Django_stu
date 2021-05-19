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

class Calss(models.Model):
    name = models.CharField(max_length=20)

class Xueqi(models.Model):
    xueqi = models.CharField(max_length=20,null=True)

class Chengji(models.Model):
    cheng = models.IntegerField(null=True)
    s_id = models.ForeignKey(Student,on_delete=models.CASCADE)
    c_id = models.ForeignKey(Calss,on_delete=models.CASCADE)
    x_id = models.ForeignKey(Xueqi,on_delete=models.CASCADE,null=True)

class Timu(models.Model):
    title = models.CharField(max_length=100)
    A = models.CharField(max_length=50)
    B = models.CharField(max_length=50)
    C = models.CharField(max_length=50)
    D = models.CharField(max_length=50)
    correct = models.CharField(max_length=5)
    c_id = models.ForeignKey(Calss,on_delete=models.CASCADE)

class Mistakes(models.Model):
    s_id = models.ForeignKey(Student, on_delete=models.CASCADE)
    ti_id = models.ForeignKey(Timu, on_delete=models.CASCADE)

