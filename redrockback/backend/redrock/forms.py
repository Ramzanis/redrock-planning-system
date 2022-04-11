from dataclasses import fields

from pyexpat import model
from tkinter import Widget
from django import forms
from django.forms import ModelForm
from .models import Subtask,Operation

#create a Form

class SubtaskForm(ModelForm):
    class Meta:
        model = Subtask
        fields = ('subtaskID','operationID', 'containerID', 'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status')

        labels = {
            'subtaskID': 'subtaskID',
            'operationID': 'operation ID', 
            'containerID': 'containerID', 
            'containerWeightT': 'containerWeightT', 
            'loadSeq': 'loadSeq', 
            'moveTo': 'moveTo', 
            'stow': 'stow', 
            'status': 'status'
        }
 

        widgets = {
            'subtaskID': forms.TextInput(attrs={'class':'form-control', 'placeholder':'SubtaskID'}),
            
            'containerID': forms.TextInput(attrs={'class':'form-control', 'placeholder':'ContainerID'}), 
            'containerWeightT': forms.TextInput(attrs={'class':'form-control', 'placeholder':'Container Weight'}), 
            'loadSeq': forms.TextInput(attrs={'class':'form-control', 'placeholder':'LoadSeq'}), 
          
            
        }

class OperationForm(ModelForm):
    class Meta:
        model = Operation
        fields = ('operationID','assignee', 'status')

        labels = {
            'operationID': 'operationID',
            'assignee': 'assignee', 
            'status': 'status', 
            
        }
 

        widgets = {
            'operationID': forms.TextInput(attrs={'class':'form-control', 'placeholder':'operationID'}), 
            
            
        }

