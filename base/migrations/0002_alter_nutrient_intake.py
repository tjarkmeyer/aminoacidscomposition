# Generated by Django 4.2.2 on 2023-06-21 14:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='nutrient',
            name='intake',
            field=models.DecimalField(decimal_places=2, max_digits=32, null=True),
        ),
    ]
