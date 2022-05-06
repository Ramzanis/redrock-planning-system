from django.contrib import admin, messages
from django.db.models.aggregates import Count

from .resources import *
from import_export.admin import ImportExportModelAdmin
from . import models 

@admin.register(models.Employee) # Registering Employee to the Admin Page
class EmployeeAdmin(ImportExportModelAdmin): 
    list_display = ['employeeID', 'firstName','lastName','address','zipCode','city'] # Items that are showed
    list_editable = ['firstName','lastName','address','zipCode','city'] # Items that can be edited
    resource_class = EmployeeResource # Link to resource class
    list_per_page = 10 # Rows per page

@admin.register(models.Status) # Registering Status to the Admin Page
class StatusAdmin(ImportExportModelAdmin):
    list_display = ['statusID', 'status'] # Items that are showed
    list_editable = ['status']# Link to resource class
    resource_class = StatusResource # Link to resource class
    list_per_page = 10 # Rows per page

@admin.register(models.MoveTo) # Registering MoveTo to the Admin Page
class MoveToAdmin(ImportExportModelAdmin):
    list_display = ['moveToID', 'location'] # Items that are showed
    list_editable = ['location']# Link to resource class
    resource_class = MoveToResource # Link to resource class
    list_per_page = 10 # Rows per page

@admin.register(models.Stow) # Registering Stow to the Admin Page
class StowAdmin(ImportExportModelAdmin):
    list_display = ['stowID', 'locationStow'] # Items that are showed
    list_editable = ['locationStow'] # Link to resource class
    resource_class = StowResource # Link to resource class
    list_per_page = 10 # Rows per page


@admin.register(models.Operation) # Registering Operation to the Admin Page
class OperationAdmin(ImportExportModelAdmin):
    list_display = ['operationID', 'assignee','dateRegistered', 'timeStart', 'timeFinish', 'status'] # Items that are showed
    list_editable = ['assignee', 'status'] # Link to resource class
    list_filter = ['status', 'dateRegistered'] # items that can be filtered
    resource_class = OperationResource # Link to resource class
    list_per_page = 10 # Rows per page

    def status(self, operation): 
        return operation.status.status

@admin.register(models.Subtask) # Registering Subtask to the Admin Page
class SubtaskAdmin(ImportExportModelAdmin):
    list_display = ['subtaskID', 'assignee','containerID', 'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status'] # Items that are showed
    list_editable = [ 'moveTo', 'stow', 'status'] # Link to resource class
    list_filter = [ 'status'] # items that can be filtered
    resource_class = SubtaskResource # Link to resource class
    list_per_page = 10 # Rows per page

    def status(self, operation):
        return operation.status.status
