from django.db import models
from django.contrib.auth.models import User
from datas.models import *
from smart_selects.db_fields import ChainedForeignKey ,GroupedForeignKey
from datetime import datetime , date


# Create your models here.

class product(models.Model):
    Code_or_Name=models.CharField(max_length=100)
    Categorie = models.ForeignKey(categorie, on_delete=models.CASCADE)
    Sub_categorie =GroupedForeignKey(sub_categorie,'Categorie',on_delete=models.CASCADE)
    Under_subcategorie = GroupedForeignKey(under_subcategorie,group_field="Categorie",on_delete=models.CASCADE)
    Brand = models.ForeignKey(brand, on_delete=models.CASCADE)

    def __str__(self):
        return self.Code_or_Name


class product_varient(models.Model):
    Product_id= models.ForeignKey(product,on_delete=models.CASCADE)
    Name = models.CharField(max_length=100)
    Price=models.IntegerField()
    Size=models.ForeignKey(size,on_delete=models.CASCADE)
    Color=models.ForeignKey(color,on_delete=models.CASCADE)
    Image = models.ImageField(upload_to='pics')
    Stock = models.IntegerField()
    Sells = models.IntegerField(default=0)

    def __str__(self):
        return self.Name



class latest_product(models.Model):
    Product_varient_id = models.ForeignKey(product_varient , on_delete=models.CASCADE)

    def __str__(self):
        return self.Product_varient_id.Name

class prodect_image(models.Model):
    Product_varient_id = models.ForeignKey(product_varient, on_delete=models.CASCADE)
    Image = models.ImageField(upload_to='pics')

class header_image(models.Model):
    Image = models.ImageField(upload_to='pics')
    Product_varient_id = models.ForeignKey(product_varient, on_delete=models.CASCADE)
    About = models.TextField()

class cart(models.Model):
    User_id=models.ForeignKey(User , on_delete=models.CASCADE)
    Product_varient_id=models.ForeignKey(product_varient , on_delete=models.CASCADE)
    Quantity = models.IntegerField()
    Total = models.IntegerField()
    Ordered = models.BooleanField(default=False)

class shipping_address(models.Model):
    User_id = models.ForeignKey(User, on_delete=models.CASCADE)
    Name = models.CharField(max_length=100)
    House_no = models.CharField(max_length=100)
    Land_mark = models.CharField(max_length=100)
    Post = models.CharField(max_length=100)
    Country = models.ForeignKey(country,on_delete=models.CASCADE)
    State = models.ForeignKey(state,on_delete=models.CASCADE)
    District = models.ForeignKey(district,on_delete=models.CASCADE)
    Pin = models.IntegerField()
    Phone = models.CharField(max_length=100)

    def __str__(self):
        return self.Name


class conformation_tb(models.Model):
    User_id = models.ForeignKey(User, on_delete=models.CASCADE)
    Refer_code = models.CharField(max_length=20)
    Address_id = models.ForeignKey(shipping_address,on_delete=models.CASCADE)
    Items = models.ManyToManyField(cart)
    Cost = models.IntegerField()
    Date = models.DateField()
    Delivered = models.BooleanField(default=False)
    Received = models.BooleanField(default=False)
    Return_req = models.BooleanField(default=False)


class wishlist(models.Model):
    User_id = models.ForeignKey(User, on_delete=models.CASCADE)
    Product_varient_id = models.ForeignKey(product_varient, on_delete=models.CASCADE)

class promo_code(models.Model):
    Code=models.CharField(max_length=20)
    Min_rate_for_apply=models.IntegerField()
    Discount_persentage=models.IntegerField()
    Max_discount_amount=models.IntegerField()
    Status=models.BooleanField()

class promo_code_applicable(models.Model):
    Promo_code_id = models.ForeignKey(promo_code,on_delete=models.CASCADE)
    Product_id = models.ForeignKey(product,null=True,blank=True,on_delete=models.SET_NULL)
    Applicable_for_total = models.BooleanField(default=False)

class promo_code_applied(models.Model):
    User_id=models.ForeignKey(User,on_delete=models.CASCADE)
    Promo_code_id = models.ForeignKey(promo_code, on_delete=models.CASCADE)
    Product_id = models.ForeignKey(product, on_delete=models.CASCADE)

