# Generated by Django 2.1.15 on 2020-04-02 08:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users_auth', '0007_auto_20200402_0120'),
    ]

    operations = [
        migrations.AlterField(
            model_name='users',
            name='picture',
            field=models.FileField(null=True, upload_to='images/'),
        ),
    ]