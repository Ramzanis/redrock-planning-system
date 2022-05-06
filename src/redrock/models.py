from auditlog.registry import auditlog
from datetime import date
from email.headerregistry import Address
from re import M
from tkinter import CASCADE
from django.db import models

class Employee(models.Model): # Employee table
    employeeID = models.IntegerField(primary_key=True)
    firstName = models.CharField(max_length=40)
    lastName = models.CharField(max_length=40)
    address = models.CharField(max_length=40)
    zipCode = models.IntegerField()
    city = models.CharField(max_length=40)

    def __str__(self) -> str: # definition to name the Foreign Key
        return self.firstName

class Status(models.Model): # Status table
    statusID = models.IntegerField(primary_key=True)
    status = models.CharField(max_length=20)

    def __str__(self) -> str: # definition to name the Foreign Key
        return self.status

class MoveTo(models.Model): # MoveTo table
    moveToID = models.IntegerField(primary_key=True)
    location = models.CharField(max_length=20)

    def __str__(self) -> str: # definition to name the Foreign Key
        return self.location

class Stow(models.Model): # Stow table
    stowID = models.IntegerField(primary_key=True)
    locationStow = models.CharField(max_length=20)

    def __str__(self) -> str: # definition to name the Foreign Key
        return self.locationStow

class Operation(models.Model): # Operation table
    operationID = models.IntegerField(primary_key=True, auto_created=True)
    assignee = models.ForeignKey('Employee', on_delete=models.CASCADE)
    dateRegistered = models.DateTimeField(auto_now_add=True)
    timeStart = models.DateTimeField(auto_now_add=True, null=True)
    timeFinish = models.DateTimeField(auto_now=True)
    status = models.ForeignKey(
        'Status', on_delete=models.CASCADE)

class Subtask(models.Model): # Subtask table
    subtaskID = models.IntegerField(primary_key=True, auto_created=True)
    assignee = models.ForeignKey('Employee', on_delete=models.CASCADE)
    containerID = models.CharField(max_length=255)
    containerWeightT = models.DecimalField(max_digits=6, decimal_places=2)
    loadSeq = models.IntegerField()
    moveTo = models.ForeignKey('MoveTo', on_delete=models.CASCADE)
    stow = models.ForeignKey('Stow', on_delete=models.CASCADE)
    status = models.ForeignKey(
        'Status', on_delete=models.CASCADE)
    

auditlog.register(Subtask)
auditlog.register(Operation)
