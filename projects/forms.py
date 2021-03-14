#DB الي نحتاجها عشان نعرضها في الصفحه ليتم ارسال البيانات من خلال الصفحه ل filedsوبعدها استدعينا ال ,,,Formsهنا سوينا (:
from django import forms
from .models import Projects

class Add_Idea(forms.ModelForm):
    class Meta:
        model =Projects
        fields=['name_projects','filled_projects','descriotion_projects','file_project','id_projects','id_Doctors_fk','status']

        widgets ={
            'id_projects':forms.TextInput(attrs={'class':'form-control'}),
            'name_projects':forms.TextInput(attrs={'class':'form-control'}),
            'filled_projects':forms.TextInput(attrs={'class':'form-control'}),
            'descriotion_projects':forms.TextInput(attrs={'class':'form-control'}),
            'file_project':forms.FileInput(attrs={'class':'form-control'}),
            # 'id':forms.Select(attrs={'class':'form-control'}),
            'status':forms.Select(attrs={'class':'form-control'}),
        } 
        
