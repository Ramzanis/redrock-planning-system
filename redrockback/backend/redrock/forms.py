from dataclasses import fields

from pyexpat import model
from tkinter import Widget
from django import forms
from django.forms import ModelForm
<<<<<<< HEAD
from .models import Subtask
=======
from .models import Subtask, Operation
>>>>>>> main

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

<<<<<<< HEAD
=======
class OperationForm(ModelForm):
    class Meta:
        model = Operation
        fields = ('operationID', 'assignee', 'status')

        labels = {
            'operationID': '',
            'assignee': '', 
            'status': '', 
            
        }
 

        widgets = {
            'operationID': forms.TextInput(attrs={'class':'form-control', 'placeholder':'operationID'}),
            'assignee': forms.TextInput(attrs={'class':'form-control', 'placeholder':'assignee'}),
            
            
        }

>>>>>>> main
