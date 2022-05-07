from cgitb import lookup
from django.db import router
from django.urls import path
from django.contrib import admin

from rest_framework_nested import routers
from . import views


admin.site.site_header = 'Redrock Administration'
admin.site.index_title = 'Admin'

router = routers.DefaultRouter()
router.register('status', views.StatusViewSet, basename='status')
router.register('operation', views.OperationViewSet)
router.register('tes', views.SubtaskViewSet, basename='status')

# URL Configs
urlpatterns = [
    path('', views.displayindex, name='displayindex'),
   
     path('order', views.displayorder, name='displayorder'),
     path('order/add', views.add_operation, name='addoperation'),
     path('order/update/<operationID>',
         views.update_operation, name='updateoperation'),
     path('order/delete/<operationID>',
         views.delete_operation, name='deleteoperation'),
     path('planning/', views.displaydata, name='displaydata'),
     path('planning/finisd', views.displayfinish, name='displayfinish'),
     path('planning/add', views.add_subtask, name='addsubtask'),
     path('planning/update/<subtaskID>',
         views.update_subtask, name='updatesubtask'),
     path('planning/delete/<subtaskID>',
         views.delete_subtask, name='deletesubtask')
]