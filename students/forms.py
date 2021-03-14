
from django import forms
from .models import Students


class Stu(forms.ModelForm):
    class Meta:
        model= Students
        fields=['id_groups_fk']


        widgets ={
            'id_groups_fk':forms.Select(attrs={'class':'form-control'}),
        } 
        
