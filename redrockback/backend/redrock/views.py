from pyexpat.errors import messages
from re import sub
from django.db.models.aggregates import Count
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework import status
from django.http import HttpResponseRedirect
from .forms import SubtaskForm


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


def displayindex(request):
    
    return render(request, 'index.html',{})

def displayorder(request):
    results = Operation.objects.all()
    results1 = Subtask.objects.all()
    return render(request, 'order.html',{'Operation':results, 'Subtask':results1})

def displaydata(request):
    results = Operation.objects.all()
    results1 = Subtask.objects.all()
    return render(request, 'ee.html',{'Operation':results, 'Subtask':results1})


def add_subtask(request):
    submitted = False
    if request.method == "POST":
        form = SubtaskForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/redrock')
        else: 
            form = SubtaskForm
            if 'submitted' in request.GET:
                submitted = True

    form = SubtaskForm
    return render(request, 'edit.html', {'form':form, 'submitted':submitted})

def update_subtask(request, subtaskID):
    subtask = Subtask.objects.get(subtaskID=subtaskID)
    form = SubtaskForm(request.POST or None, instance=subtask)
    if form.is_valid():
        form.save()
        return redirect('displaydata')

    return render(request,'editreal.html',{'subtask':subtask, 'form':form})

def delete_subtask(request, subtaskID):
    subtask = Subtask.objects.get(subtaskID=subtaskID)
    subtask.delete()
    return redirect('displaydata')






    