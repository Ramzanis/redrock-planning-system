from cgitb import lookup
from django.db import router
from django.urls import path
from rest_framework_nested import routers
from . import views



router = routers.DefaultRouter()
router.register('status', views.StatusViewSet, basename='status')
router.register('operation', views.OperationViewSet)
router.register('tes', views.SubtaskViewSet, basename='status')

# URLConf
urlpatterns = [
<<<<<<< Updated upstream
    path('', views.displaydata)
=======
    path('', views.displayindex, name='displayindex'),
    path('order', views.displayorder, name='displayorder'),
    path('planning/', views.displaydata, name='displaydata'),
    path('planning/add', views.add_subtask, name='addsubtask'),
    path('planning/opp', views.add_operation, name='addoperation'),
    path('planning/update/<subtaskID>', views.update_subtask, name='updatesubtask'),
    path('planning/delete/<subtaskID>', views.delete_subtask, name='deletesubtask')

   
>>>>>>> Stashed changes
    
]+router.urls