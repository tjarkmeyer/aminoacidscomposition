# Generated by Django 4.2.2 on 2023-06-24 16:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0003_alter_foodnutrient_amount_alter_makro_carbohydrate_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='food',
            options={'ordering': ['name']},
        ),
        migrations.RemoveField(
            model_name='food',
            name='nutritions',
        ),
        migrations.AddField(
            model_name='food',
            name='nutrients',
            field=models.ManyToManyField(blank=True, related_name='nutrients', to='base.foodnutrient'),
        ),
    ]
