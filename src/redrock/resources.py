from import_export import resources
from redrock.models import Subtask

class SubtaskResource(resources.ModelResource):
    class Meta:
        model = Subtask
        exclude = ('id')
        skip_unchanged = True
