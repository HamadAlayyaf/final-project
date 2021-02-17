from django.shortcuts import render
#from django.http import HttpResponse

# Create your views here.

# def index(reques:
#    return HttpResponse('this is a students pages')


def indx(request):
    return render(request, 'pages/index.html')