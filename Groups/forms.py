
from django import forms
from .models import Groups


class CRN(forms.ModelForm):
    class Meta:
        model= Groups
        fields=['name_groups']


        widgets ={
            'name_Groups':forms.TextInput(attrs={'class':'form-control'}),
        } 
        
