from django.shortcuts import render , redirect
from .models import *
from django.contrib import messages
from django.contrib.auth.decorators import login_required
import string
from django.http import JsonResponse,HttpResponseRedirect,HttpResponse
import random
from datas.models import *
# Create your views here.

categ = categorie.objects.all()
subcateg = sub_categorie.objects.all()
content = {
            'categorie': categ,
            'subcategorie': subcateg
            }


def index(request):
    ob = latest_product.objects.all()
    latestproduct = ob[::-1]
    mostsell = product_varient.objects.all().order_by('Sells')

    header = header_image.objects.all()
    if request.user.is_authenticated:
        items_in_cart = len(cart.objects.filter(User_id=request.user,Ordered=False))
        items_in_wish = len(wishlist.objects.filter(User_id=request.user))
        contents = {
            'data1': latestproduct,
            'data2': mostsell,
            'head': header,
            'cart_it': items_in_cart,
            'wish_it': items_in_wish}
        contents.update(content)
        return render(request, "index.html", contents )
    else:
        contents = {
            'data1':latestproduct ,
            'data2':mostsell ,
            'head':header
            }
        contents.update(content)
        return render(request, "index.html", contents)

@login_required(login_url='/accounts/signin')
def addtocart(request,prod):
    if request.method == 'POST':
        ob=product_varient.objects.get(id=prod)
        current_user = request.user
        quant = int(request.POST['txtquan'])
        price = int(ob.Price)
        total = quant*price
    else:
        ob = product_varient.objects.get(id=prod)
        current_user = request.user
        quant = 1
        price = int(ob.Price)
        total = quant * price
    cs = cart(User_id=current_user, Product_varient_id=ob, Quantity=quant, Total=total)
    cs.save()
    return redirect(cartpag)

@login_required(login_url='/accounts/signin')
def addtowishlist(request,prod):
    ob = product_varient.objects.get(id=prod)
    wishlist.objects.create(User_id=request.user , Product_varient_id=ob)
    return redirect(request.META['HTTP_REFERER'])


def sellingtops(request):
    oc = product_varient.objects.all().order_by('Sells')

@login_required(login_url='/accounts/signin')
def cartpag(request):
    ob = cart.objects.filter(User_id=request.user,Ordered=False)
    total = 0
    for price in ob:
        prod_price = price.Product_varient_id.Price
        print(prod_price)
        prod_quan = price.Quantity
        prod_total = prod_price * prod_quan
        print(prod_total)
        cart.objects.filter(id=price.id, User_id=request.user, Product_varient_id=price.Product_varient_id).update(Total=prod_total)
        total = total + prod_total
    oc = cart.objects.filter(User_id=request.user,Ordered=False)
    items_in_wish = len(wishlist.objects.filter(User_id=request.user))
    contents = {
        'data': oc,
        'tot': total,
        'wish_it': items_in_wish
        }
    contents.update(content)
    return render(request, 'cart.html',contents)

def products(request,a,b):
    a = int(a)
    b = int(b)
    if a > 0 and b > 0:
        ob = product.objects.filter(Categorie_id=a, Sub_categorie_id=b)
        list = []
        for p in ob:
            rel = product_varient.objects.filter(Product_id=p)
            for l in rel:
                list.append(l)
                break
    elif a > 0 and b == 0:
        ob = product.objects.filter(Categorie_id=a)
        list = []
        for p in ob:
            rel = product_varient.objects.filter(Product_id=p)
            for l in rel:
                list.append(l)
                break
    if request.user.is_authenticated:
        items_in_cart = len(cart.objects.filter(User_id=request.user, Ordered=False))
        items_in_wish = len(wishlist.objects.filter(User_id=request.user))
        contents = {
            'data': list,
            'cart_it': items_in_cart,
            'wish_it': items_in_wish
            }
    else:
        contents = {
            'data': list
            }
    contents.update(content)
    return render(request, 'products.html',contents)

def currentproduct(request , prod):
    ob = product_varient.objects.filter(id=prod)
    productid = ob[0].Product_id.id
    pro = product.objects.filter(id=productid)
    c = pro[0].Under_subcategorie
    rp = product.objects.filter(Under_subcategorie=c)
    related_product=[]
    for p in rp:
        rel=product_varient.objects.filter(Product_id=p)
        for l in rel:
            related_product.append(l)
            break;
    img = prodect_image.objects.filter(Product_varient_id=prod)
    size = product_varient.objects.filter(Product_id=productid,Color=ob[0].Color).order_by('Size__Size')
    color = product_varient.objects.filter(Product_id=productid,Size=ob[0].Size)
    if request.user.is_authenticated:
        items_in_cart = len(cart.objects.filter(User_id=request.user, Ordered=False))
        items_in_wish = len(wishlist.objects.filter(User_id=request.user))
        contents = {
            'data': ob,
            'imag': img,
            'rela': related_product,
            'siz': size,
            'col': color,
            'cart_it': items_in_cart,
            'wish_it': items_in_wish
            }
    else:
        contents = {
            'data': ob,
            'imag': img,
            'rela': related_product,
            'siz': size,
            'col': color,
            }
    contents.update(content)
    return render(request, 'currentproduct.html',contents)

def delete(request,prod):
    cart.objects.get(id=prod).delete()
    return redirect(request.META['HTTP_REFERER'])

def deletefromwish(request,prod):
    wishlist.objects.get(id=prod).delete()
    return redirect(request.META['HTTP_REFERER'])

@login_required(login_url='/accounts/signin')
def checkout(request):
    if request.method=="POST":
        ob = cart.objects.filter(User_id=request.user,Ordered=False)
        price = request.POST['hidprice']
        discount = request.POST['hiddiscount']
        total = request.POST['txttot']
        address = shipping_address.objects.filter(User_id=request.user)

    cnt = country.objects.all()
    items_in_cart = len(cart.objects.filter(User_id=request.user, Ordered=False))
    items_in_wish = len(wishlist.objects.filter(User_id=request.user))
    contents = {
        'count' : cnt,
        'data': ob,
        'tot': total,
        'shpadr': address,
        'pric': price,
        'disc': discount,
        'cart_it': items_in_cart,
        'wish_it': items_in_wish
        }
    contents.update(content)
    return render(request,'checkout.html',contents)

@login_required(login_url='/accounts/signin')
def wishpag(request):
    ob = wishlist.objects.filter(User_id=request.user)
    items_in_cart = len(cart.objects.filter(User_id=request.user, Ordered=False))
    contents = {
        'data': ob,
        'cart_it': items_in_cart,
        }
    contents.update(content)
    return render(request, 'wish.html',contents)

@login_required(login_url='/accounts/signin')
def paymentpage(request):
    if request.method=="POST":
        name = request.POST['txtname']
        house_no = request.POST['txthouse']
        land_mark = request.POST['txtlandmark']
        post = request.POST['txtpost']
        cid = request.POST['country']
        count = country.objects.get(id=cid)
        sid = request.POST['state']
        stat = state.objects.get(id=sid)
        did = request.POST['district']
        dist = district.objects.get(id=did)
        zip_code = int(request.POST['txtpin'])
        phone_no = int(request.POST['txtphno'])

        oc = shipping_address.objects.filter(User_id=request.user)
        if len(oc) >= 1 :
            shipping_address.objects.filter(User_id=request.user).update(Name=name,House_no=house_no,Land_mark=land_mark,Post=post,Country=count,
                                                                         State=stat,District=dist,Pin=zip_code,Phone=phone_no)
        else:
            shipping_address.objects.create(User_id=request.user,Name=name,House_no=house_no,Land_mark=land_mark,Post=post,Country=count,
                                            State=stat,District=dist,Pin=zip_code,Phone=phone_no)
        ob = cart.objects.filter(User_id=request.user,Ordered=False)
        sub_tot = request.POST['txtsubtot']
        disc = request.POST['txtdisc']
        tot = int(request.POST['txttot'])
        shipping_charge = int(request.POST['txtship'])
        total = tot + shipping_charge
        items_in_cart = len(cart.objects.filter(User_id=request.user, Ordered=False))
        items_in_wish = len(wishlist.objects.filter(User_id=request.user))
        contents = {
            'data': ob,
            'sub_tot': sub_tot,
            'disc': disc,
            'tot': total,
            'shipping': shipping_charge,
            'cart_it': items_in_cart,
            'wish_it': items_in_wish
            }
        contents.update(content)
        return render(request ,'payment.html',contents)

def contact(request):
    items_in_cart = len(cart.objects.filter(User_id=request.user, Ordered=False))
    items_in_wish = len(wishlist.objects.filter(User_id=request.user))
    contents = {
        'categorie': categ,
        'subcategorie': subcateg,
        'cart_it': items_in_cart,
        'wish_it': items_in_wish
        }
    contents.update(content)
    return render(request, 'contact.html',contents)

def placeorder(request):
    if request.method=="POST":
        ob = cart.objects.filter(User_id=request.user,Ordered=False)
        total = request.POST['txttot']
        address = shipping_address.objects.get(User_id=request.user)
        refer = ''.join(random.choices(string.ascii_lowercase + string.digits, k=20))
        a = conformation_tb(User_id=request.user,Refer_code=refer,Address_id=address, Cost=total,Date=date.today())
        a.save()
        for v in ob:
            a.Items.add(v.id)
            print(v.Product_varient_id,v.Quantity)
            s=product_varient.objects.filter(id=v.Product_varient_id.id)
            q = s[0].Stock - v.Quantity
            se = s[0].Sells + v.Quantity
            s.update(Stock=q,Sells=se)
        ob.update(Ordered=True)
        return redirect('/')


def applypromo(request):
    if request.method=="POST":
        total = int(request.POST['txttot1'])
        promocode = request.POST['txtpromo']
        print("total =",total , "promocode =",promocode)
        ob = cart.objects.filter(User_id=request.user, Ordered=False)
        conpromo=promo_code.objects.filter(Code=promocode,Status=True)
        if len(ob)>=1:
            if len(conpromo)>=1:
                fortotal = promo_code_applicable.objects.filter(Promo_code_id=conpromo[0].id,Applicable_for_total=True)
                if len(fortotal)>=1:
                    print("hai", conpromo[0].Min_rate_for_apply)
                    minrate = conpromo[0].Min_rate_for_apply
                    if minrate < total:
                        print("promocode is applied")
                        dis_percent = conpromo[0].Discount_persentage
                        print(dis_percent)
                        max_dis_price = conpromo[0].Max_discount_amount
                        print(max_dis_price)
                        print(total)
                        per_disc = total // dis_percent
                        print(per_disc)
                        if max_dis_price < per_disc:
                            dis = max_dis_price
                        else:
                            dis = per_disc
                        print(dis)
                        alltotal = total - dis
                        print(alltotal)
                        messages.success(request, 'Promocode is applied')
                        return render(request, 'cart.html', {'data': ob, 'price': total, 'tot': alltotal, 'discount': dis})
                    else:
                        print("the promocode is not applicable for you")
                        messages.success(request, 'The total amount to apply the promocode is less')
                        return render(request, 'cart.html', {'data': ob, 'tot': total})
                else:
                    alltotal = 0
                    total_discount = 0
                    for v in ob:
                        prod = v.Product_varient_id.Product_id
                        print("v = ",prod)
                        prod_applicable = promo_code_applicable.objects.filter(Promo_code_id=conpromo[0].id,Product_id=prod)
                        print(prod_applicable)
                        prod_price = v.Product_varient_id.Price
                        if len(prod_applicable)>=1:
                            print(prod_applicable,"shammas")
                            applied = promo_code_applied.objects.filter(User_id=request.user,Promo_code_id=conpromo[0].id,Product_id=prod)
                            if len(applied)==0:
                                min_rate_apply = conpromo[0].Min_rate_for_apply
                                if min_rate_apply < prod_price:
                                    dis_percent = conpromo[0].Discount_persentage
                                    max_dis_price = conpromo[0].Max_discount_amount
                                    per_disc = prod_price // dis_percent
                                    if max_dis_price < per_disc:
                                        price = prod_price - max_dis_price
                                        discount = max_dis_price
                                    else:
                                        price = prod_price - per_disc
                                        discount = per_disc
                                    quantity = v.Quantity
                                    price_of_not_applied = (quantity - 1) * prod_price
                                    total_1 = price_of_not_applied + price
                                    alltotal = alltotal + total_1
                                    total_discount = total_discount + discount
                                    promo_code_applied.objects.create(User_id=request.user,Promo_code_id=conpromo[0],Product_id=prod)
                                    continue;

                                else:
                                    quantity = v.Quantity
                                    total_4 = quantity * prod_price
                                    alltotal = alltotal + total_4
                                    continue;

                            else:
                                quantity = v.Quantity
                                total_3 = quantity * prod_price
                                alltotal = alltotal + total_3
                                continue;

                        else:
                            quantity = v.Quantity
                            total_2 = quantity * prod_price
                            alltotal = alltotal + total_2
                            continue;

                    print("for loop ends")

                    if total_discount == 0:
                        messages.info(request, 'The promocode is No more applicable')
                        return render(request, 'cart.html', {'data': ob, 'tot': total})
                    else:
                        print("end for loop")
                        messages.success(request, 'promocode is applied')
                        return render(request, 'cart.html', {'data': ob, 'price': total, 'tot':alltotal, 'discount':total_discount})

            else:
                messages.info(request, 'There is no such promocode')
                return render(request, 'cart.html', {'data': ob, 'tot': total})

        else:
            messages.info(request,'Your cart is empty')
            return redirect('/')



@login_required(login_url='/accounts/signin')
def myorder(request):
    ob = conformation_tb.objects.filter(User_id=request.user)
    items_in_cart = len(cart.objects.filter(User_id=request.user, Ordered=False))
    items_in_wish = len(wishlist.objects.filter(User_id=request.user))
    contents = {
        'data': ob,
        'cart_it': items_in_cart,
        'wish_it': items_in_wish
        }
    return render(request,'myorders.html',contents)


def search(request):
    if request.method=='POST':
        search = request.POST['txtsearch'].capitalize()
        print(search)
        a = categorie.objects.filter(Categorie=search)
        b = sub_categorie.objects.filter(Sub_categorie=search)
        c = under_subcategorie.objects.filter(Under_subcategorie=search)
        d = product.objects.filter(Code_or_Name=search)
        e = product_varient.objects.filter(Name=search)
        print('a = ',len(a),'b = ',len(b),'c = ',len(c),'d = ',len(d),'e = ',len(e))
        if len(a)>=1:
            serdata = product.objects.filter(Categorie=a[0].id)
            print(serdata)
            list = []
            for p in serdata:
                rel = product_varient.objects.filter(Product_id=p)
                for l in rel:
                    list.append(l)
                    break;
        elif len(b)>=1:
            serdata = product.objects.filter(Sub_categorie=b[0].id)
            print(serdata)
            list = []
            for p in serdata:
                rel = product_varient.objects.filter(Product_id=p)
                for l in rel:
                    list.append(l)
                    break;
        elif len(c)>=1:
            serdata = product.objects.filter(Under_subcategorie=c[0].id)
            print(serdata)
            list = []
            for p in serdata:
                rel = product_varient.objects.filter(Product_id=p)
                for l in rel:
                    list.append(l)
                    break;
        elif len(d)>=1:
            print("d")
            for p in d:
                list = product_varient.objects.filter(Product_id=p)
        elif len(e)>=1:
            print("e")
            list = e
        else:
            list = []

        if request.user.is_authenticated:
            items_in_cart = len(cart.objects.filter(User_id=request.user, Ordered=False))
            items_in_wish = len(wishlist.objects.filter(User_id=request.user))
            contents = {
                'data': list,
                'cart_it': items_in_cart,
                'wish_it': items_in_wish
            }
        else:
            contents = {
                'data': list,
            }
        contents.update(content)
        return render(request, 'products.html', contents)




def getstate(request):
    countryid=request.GET.get('cid')
    print(countryid)
    statemodel=state.objects.filter(Country_id=countryid)
    return render(request,'state_dropdown_list_option.html',{"state":statemodel})

def getdistrict(request):
    stateid=request.GET.get('sid')
    print(stateid)
    districtmodel=district.objects.filter(State_id=stateid)
    return render(request,'district_dropdown_list_option.html',{"district":districtmodel})

