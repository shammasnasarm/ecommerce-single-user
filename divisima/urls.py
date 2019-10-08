from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
from django.conf.urls import url

urlpatterns = [
    path('',views.index , name='index'),
    url(r'^addtowishlist/(?P<prod>\d+)/$', views.addtowishlist , name='addtowishlist'),
    url(r'^addtocart/(?P<prod>\d+)/$', views.addtocart , name='addtocart'),
    path('sellingtops', views.sellingtops, name='sellingtops'),
    path('cart', views.cartpag, name='cart'),
    path('wish', views.wishpag, name='wish'),
    url(r'^Product/(?P<a>\w+)/(?P<b>\d+)/', views.products , name='products'),
    url(r'^currentproduct/(?P<prod>\d+)/$', views.currentproduct , name='currentproduct'),
    url(r'^delete/(?P<prod>\d+)/$', views.delete , name='delete'),
    url(r'^deletefromwish/(?P<prod>\d+)/$', views.deletefromwish , name='deletefromwish'),
    path('checkout', views.checkout , name='checkout'),
    path('procedtopay', views.paymentpage , name='paymentpage'),
    path('applypromo', views.applypromo , name='applypromo'),
    path('contact', views.contact, name='contact'),
    path('place_order',views.placeorder,name='place_order'),
    path('myorder',views.myorder,name='myorder'),
    url(r'^getstate/',views.getstate,name='getstate'),
    url(r'^getdistrict/',views.getdistrict,name='getdistrict'),
    path('search',views.search,name='search'),
]

urlpatterns = urlpatterns + static (settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)