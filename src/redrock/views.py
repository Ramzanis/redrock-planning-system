from lib2to3.pgen2.grammar import opmap_raw
from pyexpat.errors import messages
from re import sub
from django.db.models.aggregates import Count
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from rest_framework.viewsets import ModelViewSet
from .forms import SubtaskForm, OperationForm
from django.db.models import Q
from .models import Subtask, Operation, Status
from .serializers import StatusSerializer, OperationSerializer, SubtaskSerializer


class StatusViewSet(ModelViewSet): # ViewSets
    queryset = Subtask.objects.prefetch_related(
        'moveTo', 'operationID', 'stow', 'status').all()
    serializer_class = StatusSerializer


class OperationViewSet(ModelViewSet): # ViewSets
    serializer_class = OperationSerializer
    queryset = Operation.objects.prefetch_related('assignee', 'status').all()


class SubtaskViewSet(ModelViewSet): # ViewSets
    queryset = Subtask.objects.prefetch_related(
        'moveTo','assignee', 'stow', 'status').all()
    serializer_class = SubtaskSerializer


def displayindex(request): # View for Home page
    finish = Subtask.objects.prefetch_related(
    'moveTo', 'assignee', 'stow', 'status').filter(status_id=1)
    return render(request, 'index.html', {'Subtask': finish})


def displayorder(request):  # View for operations
    results = Operation.objects.prefetch_related('assignee', 'status').all()

    return render(request, 'order.html', {'Operation': results})
    
def displaydata1(request):
    results1 = Subtask.objects.prefetch_related(
        'moveTo', 'operationID', 'stow', 'status').filter(status_id=1)
    return render(request, 'index.html', {'Subtask': results1})

def displaydata(request):  # View for Subtask
    results1 = Subtask.objects.prefetch_related(
        'moveTo', 'assignee', 'stow', 'status').filter(~Q(status_id=3))

    return render(request, 'subtask.html', {'Subtask': results1})

def displayfinish(request): # View for finished Subtasks
    finish = Subtask.objects.prefetch_related(
        'moveTo', 'assignee', 'stow', 'status').filter(status_id=3)

    return render(request, 'finish.html', {'Subtask': finish})

def add_subtask(request): # definition for adding a subtask
    submitted = False
    if request.method == "POST":
        form = SubtaskForm(request.POST)
        if form.is_valid():# if the form is valid save data
            form.save()
            return redirect('displaydata')
        else:
            form = SubtaskForm
            if 'submitted' in request.GET:
                submitted = True
    form = SubtaskForm
    return render(request, 'addsubtask.html', {'form': form, 'submitted': submitted})


def update_subtask(request, subtaskID): # definition for updating a subtask
    subtask = Subtask.objects.prefetch_related(
        'moveTo', 'assignee', 'stow', 'status').get(subtaskID=subtaskID)
    form = SubtaskForm(request.POST or None, instance=subtask)
    if form.is_valid(): # if the form is valid save data
        form.save()
        return redirect('displaydata')
    return render(request, 'editsubtask.html', {'subtask': subtask, 'form': form})


def update_operation(request, operationID): # definition for updating a Operation
    operation = Operation.objects.prefetch_related(
        'assignee', 'status').get(operationID=operationID)
    form = OperationForm(request.POST or None, instance=operation)
    if form.is_valid(): # if the form is valid save data
        form.save()
        return redirect('displayorder')
    return render(request, 'editoperation.html', {'operation': operation, 'form': form})


def delete_subtask(request, subtaskID): # definition for deleting subtasks
    subtask = Subtask.objects.prefetch_related(
        'moveTo', 'assignee', 'stow', 'status').get(subtaskID=subtaskID)
    subtask.delete()
    return redirect('displaydata')


def delete_operation(request, operationID): # definition for deleting operations
    operation = Operation.objects.prefetch_related(
        'assignee', 'status').get(operationID=operationID)
    operation.delete()
    return redirect('displayorder')


def add_operation(request): # definition for adding a operations
    submitted = False
    if request.method == "POST":
        form = OperationForm(request.POST)
        if form.is_valid(): # if the form is valid save data
            form.save()
            return redirect('displaydata')
        else:
            form = OperationForm
            if 'submitted' in request.GET:
                submitted = True
    form = OperationForm
    return render(request, 'addoperation.html', {'form': form, 'submitted': submitted})
