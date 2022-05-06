from django import forms
from django.forms import ModelForm
from .models import Subtask, Operation

class SubtaskForm(ModelForm): # create a form for Subtask
    class Meta:
        model = Subtask # model for the subtask
        fields = ('subtaskID',  'containerID',
                  'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status') # fields used in the form
        labels = { 
            'subtaskID': 'subtaskID',
            'containerID': 'containerID',
            'containerWeightT': 'containerWeightT',
            'loadSeq': 'loadSeq',
            'moveTo': 'moveTo',
            'stow': 'stow',
            'status': 'status'
        } # labels in the form 

        widgets = {
            'subtaskID': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'SubtaskID'}),

            'containerID': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'ContainerID'}),
            'containerWeightT': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Container Weight'}),
            'loadSeq': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'LoadSeq'}),
        } # styling the form

class OperationForm(ModelForm):# create a form for Subtask
    class Meta:
        model = Operation # model for the subtask
        fields = ('operationID', 'assignee', 'status') # fields used in the form
        labels = {
            'operationID': 'operationID',
            'assignee': 'assignee',  
        }# labels in the form 
        widgets = {
            'operationID': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'operationID'}),     
        }# styling the form
