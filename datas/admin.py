from django.contrib import admin

from .models import categorie ,sub_categorie , state ,under_subcategorie , country , district , brand , color , size

# Register your models here.

class sub_categorieAdmin(admin.ModelAdmin):
    list_display = ('Categorie','Sub_categorie')




admin.site.register(categorie)
admin.site.register(sub_categorie,sub_categorieAdmin)
admin.site.register(country)
admin.site.register(state)
admin.site.register(under_subcategorie)
admin.site.register(district)
admin.site.register(brand)
admin.site.register(size)
admin.site.register(color)
