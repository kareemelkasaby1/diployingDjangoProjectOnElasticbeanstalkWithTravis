# Generated by Django 2.2.11 on 2020-03-24 14:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users_auth', '0003_auto_20200320_1333'),
        ('Project', '0014_auto_20200324_1635'),
    ]

    operations = [
        migrations.AddField(
            model_name='project_comments',
            name='user',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='cuser', to='users_auth.Users'),
            preserve_default=False,
        ),
    ]
