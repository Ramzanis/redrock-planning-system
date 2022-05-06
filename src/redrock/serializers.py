from redrock.models import Status, Operation, Subtask
from rest_framework import serializers


class StatusSerializer(serializers.ModelSerializer): # Serializer class Status
    class Meta:
        model = Status
        fields = ['statusID', 'status']

class OperationSerializer(serializers.ModelSerializer): # Serializer class Operation
    class Meta:
        model = Operation
        fields = ['operationID', 'assignee', 'dateRegistered', 'timeStart', 'timeFinish', 'status']

class SubtaskSerializer(serializers.ModelSerializer): # Serializer class Subtask
    class Meta:
        model = Subtask
        fields = ['subtaskID',  'containerID', 'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status']
