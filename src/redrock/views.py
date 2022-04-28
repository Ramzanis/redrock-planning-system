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


class StatusViewSet(ModelViewSet):
    queryset = Subtask.objects.prefetch_related(
        'moveTo', 'operationID', 'stow', 'status').all()
    serializer_class = StatusSerializer


class OperationViewSet(ModelViewSet):
    serializer_class = OperationSerializer
    queryset = Operation.objects.prefetch_related('assignee', 'status').all()


class SubtaskViewSet(ModelViewSet):
    queryset = Subtask.objects.prefetch_related(
        'moveTo', 'operationID', 'stow', 'status').all()
    serializer_class = SubtaskSerializer


def displayindex(request):
    return render(request, 'index.html', {})


def displayorder(request):
    results = Operation.objects.prefetch_related('assignee', 'status').all()

    return render(request, 'order.html', {'Operation': results})


def displaydata(request):
    results1 = Subtask.objects.prefetch_related(
        'moveTo', 'operationID', 'stow', 'status').filter(~Q(status_id=3))

    return render(request, 'ee.html', {'Subtask': results1})

def displayfinish(request):
    finish = Subtask.objects.prefetch_related(
        'moveTo', 'operationID', 'stow', 'status').filter(status_id=3)

    return render(request, 'finish.html', {'Subtask': finish})

def add_subtask(request):
    submitted = False
    if request.method == "POST":
        form = SubtaskForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('displaydata')
        else:
            form = SubtaskForm
            if 'submitted' in request.GET:
                submitted = True

    form = SubtaskForm
    return render(request, 'edit.html', {'form': form, 'submitted': submitted})


def update_subtask(request, subtaskID):
    subtask = Subtask.objects.prefetch_related(
        'moveTo', 'operationID', 'stow', 'status').get(subtaskID=subtaskID)
    form = SubtaskForm(request.POST or None, instance=subtask)
    if form.is_valid():
        form.save()
        return redirect('displaydata')

    return render(request, 'editreal.html', {'subtask': subtask, 'form': form})


def update_operation(request, operationID):
    operation = Operation.objects.prefetch_related(
        'assignee', 'status').get(operationID=operationID)
    form = OperationForm(request.POST or None, instance=operation)
    if form.is_valid():
        form.save()
        return redirect('displayorder')

    return render(request, 'editoperation.html', {'operation': operation, 'form': form})


def delete_subtask(request, subtaskID):
    subtask = Subtask.objects.prefetch_related(
        'moveTo', 'operationID', 'stow', 'status').get(subtaskID=subtaskID)
    subtask.delete()
    return redirect('displaydata')


def delete_operation(request, operationID):
    operation = Operation.objects.prefetch_related(
        'assignee', 'status').get(operationID=operationID)
    operation.delete()
    return redirect('displayorder')


def add_operation(request):
    submitted = False
    if request.method == "POST":
        form = OperationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('displaydata')
        else:
            form = OperationForm
            if 'submitted' in request.GET:
                submitted = True

    form = OperationForm
    return render(request, 'addoperation.html', {'form': form, 'submitted': submitted})
