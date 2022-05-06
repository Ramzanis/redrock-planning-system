from import_export import resources
from redrock.models import *

class SubtaskResource(resources.ModelResource): # Resource Subtask
    class Meta:
        model = Subtask # Modeld used
        import_id_fields = ['subtaskID'] # name the id field
        skip_unchanged = True

class OperationResource(resources.ModelResource): # Resource Operation
    class Meta:
        model = Operation # Modeld used
        import_id_fields = ['operationID'] # name the id field
        skip_unchanged = True

class EmployeeResource(resources.ModelResource): # Resource Employee
    class Meta:
        model = Employee # Modeld used
        import_id_fields = ['employeeID'] # name the id field
        skip_unchanged = True

class StatusResource(resources.ModelResource): # Resource Status
    class Meta:
        model = Status # Modeld used
        import_id_fields = ['statusID'] # name the id field
        skip_unchanged = True

class MoveToResource(resources.ModelResource): # Resource MoveTo
    class Meta:
        model = MoveTo # Modeld used
        import_id_fields = ['moveToID'] # name the id field
        skip_unchanged = True

class StowResource(resources.ModelResource): # Resource Stow
    class Meta:
        model = Stow # Modeld used
        import_id_fields = ['stowID'] # name the id field
        skip_unchanged = True


