from dataclasses import fields

from pyexpat import model
from tkinter import Widget
from django import forms
from django.forms import ModelForm
from .models import Subtask

#create a Form

class SubtaskForm(ModelForm):
    class Meta:
        model = Subtask
        fields = ('subtaskID','operationID', 'containerID', 'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status')

        labels = {
            'subtaskID': '',
            'operationID': '', 
            'containerID': '', 
            'containerWeightT': '', 
            'loadSeq': '', 
            'moveTo': '', 
            'stow': '', 
            'status': ''
        }
 

        widgets = {
            'subtaskID': forms.TextInput(attrs={'class':'form-control', 'placeholder':'SubtaskID'}),
            
            'containerID': forms.TextInput(attrs={'class':'form-control', 'placeholder':'ContainerID'}), 
            'containerWeightT': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Container Weight'}), 
            'loadSeq': forms.TextInput(attrs={'class':'form-control', 'placeholder':'LoadSeq'}), 
            'moveTo': forms.TextInput(attrs={'class':'form-control', 'placeholder':'MoveTo'}), 
            'stow': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Stow'}), 
            
        }

