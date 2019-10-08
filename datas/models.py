from django.db import models
from smart_selects.db_fields import ChainedForeignKey ,GroupedForeignKey

# Create your models here.

class categorie(models.Model):
    Categorie=models.CharField(max_length=100)

    def __str__(self):
        return self.Categorie

class sub_categorie(models.Model):
    Categorie = models.ForeignKey(categorie,on_delete=models.CASCADE)
    Sub_categorie=models.CharField(max_length=100)

    def __str__(self):
        return self.Sub_categorie


class under_subcategorie(models.Model):
    Categorie = models.ForeignKey(categorie, on_delete=models.CASCADE)
    Sub_categorie =GroupedForeignKey(sub_categorie,'Categorie',on_delete=models.CASCADE)
    Under_subcategorie = models.CharField(max_length=100)

    def __str__(self):
        template = '{0.Sub_categorie.Sub_categorie} - {0.Under_subcategorie}'
        return template.format(self)


class brand(models.Model):
    Brand = models.CharField(max_length=100)

    def __str__(self):
        return self.Brand


class size(models.Model):
    Size = models.IntegerField()
    Size_name = models.CharField(max_length=10)

    def __str__(self):
        return str(self.Size)


class color(models.Model):
    Color = models.CharField(max_length=100)

    def __str__(self):
        return self.Color


class country(models.Model):
    Country = models.CharField(max_length=100)

    def __str__(self):
        return self.Country


class state(models.Model):
    Country_id=models.ForeignKey(country , on_delete=models.CASCADE)
    State=models.CharField(max_length=100)

    def __str__(self):
        return self.State


class district(models.Model):
    Country_id = models.ForeignKey(country, on_delete=models.CASCADE)
    State_id = GroupedForeignKey(state,'Country_id',on_delete=models.CASCADE)
    District = models.CharField(max_length=100)

    def __str__(self):
        return self.District

