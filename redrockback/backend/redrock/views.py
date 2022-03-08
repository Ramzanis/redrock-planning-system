from pyexpat.errors import messages
from django.db.models.aggregates import Count
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework import status

from .forms import upform
from .models import Subtask, Operation, Status
from .serializers import StatusSerializer, OperationSerializer, SubtaskSerializer

class StatusViewSet(ModelViewSet):
    queryset = Status.objects.all()
    serializer_class = StatusSerializer
    
    
class OperationViewSet(ModelViewSet):
    serializer_class = OperationSerializer
    queryset = Operation.objects.all()
    



class SubtaskViewSet(ModelViewSet):
    queryset = Subtask.objects.all()
    serializer_class = SubtaskSerializer


def displaydata(request):
    results = Operation.objects.all()
    results1 = Subtask.objects.all()
    return render(request, 'ee.html',{'Operation':results, 'Subtask':results1})

def updatedata(request,subtaskID):
    result = Subtask.objects.get(subtaskID=subtaskID)
    return render(request,'edit.html',{'Subtask':result})

def updatefo(request,subtaskID):
    updatefo = Subtask.objects.get(subtaskID=subtaskID)
    form=upform(request.POST,instance=updatefo)
    if form.is_valid():
        form.save()
        
        return render(request,"edit.html",{'Subtask':updatefo})
    return HttpResponse(updatefo)









    