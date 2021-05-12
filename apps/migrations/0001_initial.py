# Generated by Django 2.2 on 2021-04-12 15:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='calss',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.CharField(max_length=20)),
                ('name', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='xueqi',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('xueqi', models.CharField(max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='chengji',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cheng', models.IntegerField(null=True)),
                ('c_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='apps.calss')),
                ('s_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='apps.Student')),
                ('x_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='apps.xueqi')),
            ],
        ),
    ]