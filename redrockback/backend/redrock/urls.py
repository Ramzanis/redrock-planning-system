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
    path('', views.displaydata)

]+router.urls