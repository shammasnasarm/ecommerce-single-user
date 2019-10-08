from django.contrib import admin
from .models import *

# Register your models here.
class product_varientAdmin(admin.ModelAdmin):
    list_display = ('Product_id','Name', 'Price', 'Stock')
    search_fields = ['Name', 'Product_id']

class productAdmin(admin.ModelAdmin):
    fields = ['Code_or_Name', 'Categorie','Sub_categorie','Under_subcategorie','Brand']
    list_display = ('Code_or_Name', 'Brand', 'Categorie', 'Sub_categorie', 'Under_subcategorie')
    search_fields = ['Code_or_Name', 'Categorie']

class conformation_tbAdmin(admin.ModelAdmin):
    list_display = ['User_id','Delivered','Received','Return_req','Address_id']
    list_display_links = ['User_id','Address_id']
    list_filter = ['Delivered','Received','Return_req']
    search_fields = ['User_id__username','Refer_code']

    def get_items(self, obj):
        return "\n".join([p.Product_varient_id.Name for p in obj.items.all()])


admin.site.register(product_varient,product_varientAdmin)
admin.site.register(latest_product)
admin.site.register(prodect_image)
admin.site.register(header_image)
admin.site.register(conformation_tb,conformation_tbAdmin)
admin.site.register(shipping_address)
admin.site.register(product,productAdmin)
admin.site.register(promo_code)
admin.site.register(promo_code_applicable)
