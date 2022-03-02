from redrock.models import Status,Operation,Subtask
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
        fields = ['subtaskID', 'operationID','containerID', 
        'containerWeightT','loadSeq','moveTo','stow']<<<<<<< HEAD
        'containerWeightT','loadSeq','moveTo','stow']
=======
        'containerWeightT','loadSeq','moveTo','stow','status']
>>>>>>> b94042e2d527273bc7265fd45fc1e3ddb456db72
