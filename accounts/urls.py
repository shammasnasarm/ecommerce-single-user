from django.urls import path
from . import views
from django.contrib.auth.views import PasswordResetView, PasswordResetConfirmView, PasswordResetDoneView, PasswordResetCompleteView
from django.conf.urls import url


urlpatterns = [
    path('register', views.register , name='register'),
    path('register_user', views.register_user , name= 'registeruser'),
    path('signin', views.signin , name='signin'),
    path('login', views.login_user , name='login'),
    path('signout', views.signout , name='signout'),
#    url(r'^password_reset/$', password_reset, name='password_reset'),
#    url(r'^password_reset/done/$', password_reset_done, name='password_reset_done'),
#    url(r'^reset/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',password_reset_confirm, name='password_reset_confirm'),
#    url(r'^reset/done/$', password_reset_complete, name='password_reset_complete'),
    path('password_reset/',PasswordResetView.as_view(),name='password_reset'),
    path('password_reset_done/', PasswordResetDoneView.as_view(), name='password_reset_done'),
    path('password_reset_<uidb64>_<token>/', PasswordResetConfirmView.as_view(),name='password_reset_confirm'),
    path('password_reset/complete/', PasswordResetCompleteView.as_view(), name='password_reset_complete'),

]