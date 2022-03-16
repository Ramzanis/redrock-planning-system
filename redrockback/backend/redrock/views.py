from django.db.models.aggregates import Count
from django.shortcuts import get_object_or_404, render
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework import status
<<<<<<< Updated upstream
=======
from .forms import SubtaskForm, OperationForm
from .filters import SubtaskFilter


>>>>>>> Stashed changes
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
    return render(request, 'addoreder.html', {'form':form, 'submitted':submitted})




    