from datetime import date
from tkinter import CASCADE
from django.core.validators import MinValueValidator
from django.db import models

class Status(models.Model):
    statusID = models.IntegerField(primary_key=True)
    status = models.CharField(max_length=255)

    def __str__(self) -> str:
        return self.status


class Operation(models.Model):
    operationID = models.IntegerField(primary_key=True)
    assignee = models.CharField(max_length=255)
    dateRegistered = models.DateTimeField(auto_now_add=True)
    timeStart = models.DateTimeField(auto_now_add=True, null=True)
    timeFinish = models.DateTimeField(null=True)
    status = models.ForeignKey(
        'Status', on_delete=models.CASCADE) 

    def __int__(self) -> str:
        return self.operationID

class Subtask(models.Model):
    subtaskID = models.IntegerField(primary_key=True, auto_created=True)  
    operationID = models.ForeignKey('Operation', on_delete=models.CASCADE)
    containerID = models.CharField(max_length=255)
    containerWeightT = models.DecimalField(max_digits=6, decimal_places=2)
    loadSeq = models.IntegerField()
    moveTo = models.CharField(max_length=255,null=True)
    stow = models.CharField(max_length=255,null=True)
    status = models.ForeignKey(
        'Status', on_delete=models.CASCADE) 


