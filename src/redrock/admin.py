from django.contrib import admin, messages
from django.db.models.aggregates import Count
from . import models
from .resources import *
from import_export.admin import ImportExportModelAdmin

@admin.register(models.Employee)
class EmployeeAdmin(ImportExportModelAdmin):
    list_display = ['employeeID', 'firstName','lastName','address','zipCode','city']
    list_editable = ['firstName','lastName','address','zipCode','city']
    resource_class = EmployeeResource
    list_per_page = 10

@admin.register(models.Status)
class StatusAdmin(ImportExportModelAdmin):
    list_display = ['statusID', 'status']
    list_editable = ['status']
    resource_class = StatusResource
    list_per_page = 10

@admin.register(models.MoveTo)
class MoveToAdmin(ImportExportModelAdmin):
    list_display = ['moveToID', 'location']
    list_editable = ['location']
    resource_class = MoveToResource
    list_per_page = 10

@admin.register(models.Stow)
class StowAdmin(ImportExportModelAdmin):
    list_display = ['stowID', 'locationStow']
    list_editable = ['locationStow']
    resource_class = StowResource
    list_per_page = 10


@admin.register(models.Operation)
class OperationAdmin(ImportExportModelAdmin):
    list_display = ['operationID', 'assignee',
                    'dateRegistered', 'timeStart', 'timeFinish', 'status']
    list_editable = ['assignee', 'status']
    list_filter = ['status', 'dateRegistered']
    resource_class = OperationResource
    list_per_page = 10

    def status(self, operation):
        return operation.status.status

@admin.register(models.Subtask)
class SubtaskAdmin(ImportExportModelAdmin):
    list_display = ['subtaskID', 'assignee',
                    'containerID', 'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status']
    list_editable = [ 'moveTo', 'stow', 'status']
    list_filter = [ 'status']
    resource_class = SubtaskResource
    list_per_page = 10

    def status(self, operation):
        return operation.status.status
