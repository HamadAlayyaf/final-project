from django.shortcuts import render

# Create your views here.

def home(request):
    return render(request, 'pages/home.html')


def addidea(request):
    return render(request, 'pages/addidea.html')