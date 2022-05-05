from import_export import resources
from redrock.models import Employee, MoveTo, Operation, Status, Stow, Subtask

class SubtaskResource(resources.ModelResource):
    class Meta:
        model = Subtask
        import_id_fields = ['subtaskID']
        skip_unchanged = True

class OperationResource(resources.ModelResource):
    class Meta:
        model = Operation
        import_id_fields = ['operationID']
        skip_unchanged = True

class EmployeeResource(resources.ModelResource):
    class Meta:
        model = Employee
        import_id_fields = ['employeeID']
        skip_unchanged = True

class StatusResource(resources.ModelResource):
    class Meta:
        model = Status
        import_id_fields = ['statusID']
        skip_unchanged = True

class MoveToResource(resources.ModelResource):
    class Meta:
        model = MoveTo
        import_id_fields = ['moveToID']
        skip_unchanged = True

class StowResource(resources.ModelResource):
    class Meta:
        model = Stow
        import_id_fields = ['stowID']
        skip_unchanged = True


