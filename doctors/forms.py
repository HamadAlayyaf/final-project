
from django import forms
from .models import Doctors


class Doc(forms.ModelForm):
    class Meta:
        model= Doctors
        fields=['id_groups_fk']


        widgets ={
            'id_groups_fk':forms.Select(attrs={'class':'form-control'}),
        } 
        
