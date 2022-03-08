from dataclasses import fields
from pyexpat import model
from django import forms
from .models import Subtask

class upform(forms.ModelForm):
    class Meta:
        model = Subtask
        fields = "__all__"