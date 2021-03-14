from django.shortcuts import render 
import os
from django.conf import settings
from django.templatetags.static import static
from django.utils.regex_helper import Group
from django.http import HttpResponse
from projects.models import Projects
# from students.models import Students
from django import forms
from django.contrib import messages
from django.utils.datastructures import MultiValueDictKeyError
from .models import Doctors,CommitteesCharis,Students,Groups
from projects.forms import Add_Idea,Projects
from Groups.forms import CRN 
from doctors.forms import Doc,Doctors
from students.forms import Stu
from django.shortcuts import redirect#import libray redirect 
# Create your views here.
#from projects.forms import Add_Idea

# Login Pages


## messages for login page
message_welcome = 'Welcome Mr.'
message_error_sorry = "Sorry Mr."
message_error_reason = " the username or password are invalid - please try again"

def login(request):
    return render(request, "login.html")


def loginCommittee(request):
    if request.method=="POST":
        try:
            check_committee = CommitteesCharis.objects.get(
                name_committees_charis = request.POST.get('username'), 
                passwords = request.POST.get('password')
                )
            messages.success(request, message_welcome + request.POST.get('username'))
            return render(request, 'basic_committee.html')
        except CommitteesCharis.DoesNotExist as committeeNull:
            messages.error(request, message_error_sorry + request.POST.get('username') + message_error_reason)
    return render(request, "pages_login/loginCommittee.html")


def loginDoctors(request):
    if request.method=="POST":
        try:
            check_doctor = Doctors.objects.get(
                name_Doctors = request.POST.get('username'), 
                passwords = request.POST.get('password')
                )
            messages.success(request, message_welcome + request.POST.get('username'))
            return render(request, 'baisc_doctors.html')
        except Doctors.DoesNotExist as doctorNull:
            messages.error(request, message_error_sorry + request.POST.get('username') + message_error_reason)
    return render(request, "pages_login/loginDoctors.html")

def loginStudents(request):
    if request.method=="POST":
        try:
            check_student = Students.objects.get(
                name_Students = request.POST.get('username'), 
                passwords = request.POST.get('password')
                )
            messages.success(request, message_welcome + request.POST.get('username'))
            hisname = {'stdName':request.POST.get('username')}
            return render(request, 'baisc_students.html',hisname)
        except Students.DoesNotExist as studentNull:
            messages.error(request, message_error_sorry + request.POST.get('username') + message_error_reason)
    return render(request, "pages_login/loginStudents.html")


## committee chairs views

def committee_home(request):
    return render(request, 'pages_Committee/home.html')


def committee_add_idea(request):
    
    if request.method =='POST':
        Idea = Add_Idea(request.POST, request.FILES)
        if Idea.is_valid():
            Idea.save()
            return redirect('show_suggested_idea')
            return redirect('show_suggested_idea')

    context={
        'from':Add_Idea(),
        
    }
    return render(request, 'pages_Committee/add_idea.html',context)

def show_suggested_idea(request):
    
    context={
            'project':Projects.objects.all(),
            
    }
    return render(request, 'pages_Committee/show_suggested_idea.html',context)

# def download(request,path):
#     file_path = os.path.join(settings.MEDIA_ROOT,path)
#     if os.path.exists(file_path):
#         with open(file_path,'rb')as fh:
#             response = HttpResponse(fh.read(),content_type="aplication/file_project")
#             response['content-Disposition']='inline;filename='+os.path.basename(file_path)
#             return response
#     raise Http404

def committee_show_idea(request):
    
    return render(request, 'pages_Committee/show_idea.html')


def committee_add_student_to_groups(request):
    if request.method =='POST':
        stu = Stu(request.POST)
        if stu.is_valid():
            stu.save()

    
    context = {
        'forms':Stu(),
        'student':Students.objects.all(),
    }
    return render(request,'pages_Committee/Add_student_To_groups.html', context)

def Student_update(request,id):
    id_Stu = Students.objects.get(id_students=id)
    if request.method =='POST':
        stu_save = Stu(request.POST,instance= id_Stu)
        if stu_save.is_valid():
            stu_save.save()
            return redirect('/committee_add_student_to_groups')

    else:
        stu_save = Stu(instance=id_Stu)
        
    context={
        'forms':stu_save

    }
    return render(request,'pages_Committee/Student_update.html', context)





    # studnetData = request.GET.get('stdselect')
    # groupData = request.GET.get('groupselect')
    # databoth = Students.objects.update(name_Students=studnetData)
    #studnetField = Students.objects.filter(id_groups_fk=None)
    # groupField = Groups.objects.exclude(id_groups=None)
    # std  = Students.objects.filter(id_groups_fk=None)
    # if request.method == 'POST':
    #     studentsID = request.POST.create('std')
    #     groupID = request.POST.create('group')
    #     data = Students,Groups(id_Students = studentsID, id_groups = groupID)
    #     data.save()
    # #studnetField.save()
    # context = {
    #         'student':std,
    #         'groups': groupField,
    # }

    # return render(request, 'pages_Committee/Add_student_To_groups.html', context)


# def committee_add_student_to_groups(request):
#     context = {
#             'student':Students.objects.all(),
#             }
    
#     if request.method=="POST":
#         studentsID = request.POST['students']
#         groupID = request.POST.['group']
#         data = Students(name_Students = studentsID, id_groups_fk = groupID)
#         data.save()
#     return render(request, 'pages_Committee/Add_student_To_groups.html', context)


def committee_add_doctor_to_groups(request):
    if request.method =='POST':
        doc = Doc(request.POST)
        if doc.is_valid():
            doc.save()

    
    context = {
        'forms':Doc(),
        'doctor':Doctors.objects.all(),
    }
    return render(request,'pages_Committee/Add_doctor_To_groups.html', context)

def Doctor_update(request,id):
    id_GRO = Doctors.objects.get(id_Doctors=id)
    if request.method =='POST':
        do_save = Doc(request.POST,instance= id_GRO)
        if do_save.is_valid():
            do_save.save()
            return redirect('/committee_add_doctor_to_groups')

    else:
        do_save = Doc(instance=id_GRO)
        
    context={
        'forms':do_save

    }
    return render(request,'pages_Committee/Doctor_update.html', context)



def Add_CRN(request):
    if request.method =='POST':
        cr = CRN(request.POST)
        if cr.is_valid():
            cr.save()

    context={
        'froms':CRN(),
        'groub':Groups.objects.all(),
    }
    return render(request, 'pages_Committee/Add_CRN.html',context)


#CRNهنا سويت فنكشن عشان اقدر اسوي تعديل ل 
def update(request,id):
    groub_id = Groups.objects.get(id_groups=id)
    if request.method =='POST':
        groub_save = CRN(request.POST,instance=groub_id)
        if groub_save.is_valid():
            groub_save.save()
            return redirect('/Add_CRN')

    else:
        groub_save = CRN(instance=groub_id)
        
    context={
        'form':groub_save

    }
    return render(request,'pages_Committee/update.html', context)





def evaluation(request):
        return render(request, 'pages_Committee/show_evaluation.html')

# doctors views

def doctors_home(request):
    return render(request, 'pages_Doctors/home.html')

def doctor_show_idea(request):
    return render(request, 'pages_Doctors/doctor_show_idea.html')

def doctor_create_group(request):
    return render(request, 'pages_Doctors/doctor_create_group.html')

def doctor_modification_the_group(request):
    return render(request, 'pages_Doctors/doctor_modification_the_group.html')

def doctor_evaluating_groups(request):
    return render(request, 'pages_Doctors/doctor_evaluating_groups.html')

def doctor_show_my_group_evaluation(request):
    return render(request, 'pages_Doctors/doctor_show_my_group_evaluation.html')


# students views

def student_home(request):
    return render(request, 'pages_students/student_home.html')

def student_show_the_department_idea(request):
    return render(request, 'pages_students/student_show_the_department_idea.html')

def student_show_archived_idea(request):
    return render(request, 'pages_students/student_show_archived_idea.html')

def student_upload_project(request):
    return render(request, 'pages_students/student_upload_project.html')

def student_create_groups(request):
    return render(request, 'pages_students/student_create_groups.html')

def student_dont_groups(request):
    return render(request, 'pages_students/student_dont_groups.html')