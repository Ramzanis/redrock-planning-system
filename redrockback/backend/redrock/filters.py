from pyexpat import model
import django_filters
from .models import *

class SubtaskFilter(django_filters.FilterSet):
   class Meta:
       model = Subtask
       fields = '__all__'
       exclude = ['subtaskID', 'containerID', 'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status']
    