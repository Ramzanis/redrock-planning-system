from redrock.models import Status, Operation, Subtask
from rest_framework import serializers


class StatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = Status
        fields = ['statusID', 'status']


class OperationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Operation
        fields = ['operationID', 'assignee', 'dateRegistered',
                  'timeStart', 'timeFinish', 'status']


class SubtaskSerializer(serializers.ModelSerializer):
    class Meta:
        model = Subtask
        fields = ['subtaskID', 'operationID', 'containerID',
                  'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status']
