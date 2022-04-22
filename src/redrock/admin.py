from django.contrib import admin, messages
from django.db.models.aggregates import Count
from . import models

@admin.register(models.Status)
class StatusAdmin(admin.ModelAdmin):
    list_display = ['statusID', 'status']
    list_editable = ['status']

@admin.register(models.Operation)
class OperationAdmin(admin.ModelAdmin):
    list_display = ['operationID', 'assignee',
                    'dateRegistered', 'timeStart', 'timeFinish', 'status']
    list_editable = ['timeFinish', 'assignee', 'status']
    list_filter = ['status', 'dateRegistered']
    list_per_page = 10

    def status(self, operation):
        return operation.status.status

@admin.register(models.Subtask)
class SubtaskAdmin(admin.ModelAdmin):
    list_display = ['subtaskID', 'operationID',
                    'containerID', 'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status']
    list_editable = ['containerID', 'containerWeightT', 'loadSeq', 'status']
    list_filter = ['operationID', 'status']
    list_per_page = 10

    def status(self, operation):
        return operation.status.status

    def operationID(self, operation):
        return operation.operationID.operationID
