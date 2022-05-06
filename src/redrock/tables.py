import django_tables2 as tables
from redrock.models import Subtask, Operation


class UsersTable(tables.Table): # Create table for Subtask
    class Meta:
        model = Subtask
        template_name = "django_tables2/bootstrap.html"
        fields = ('subtaskID','assignee',  'containerID', 'containerWeightT', 'loadSeq', 'moveTo', 'stow', 'status')

class OperationTable(tables.Table): # Create table for Operation
    class Meta:
        model = Operation
        template_name = "django_tables2/bootstrap.html"
        fields = ('operationID', 'assignee', 'dateRegistered', 'timeStart', 'timeFinish', 'status')
