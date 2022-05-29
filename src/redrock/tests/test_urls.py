import imp
from django.test import SimpleTestCase
from django.urls import reverse, resolve
from redrock.views import *

class TestUrls(SimpleTestCase):

    def test_index_url_resolve(self):
        url = reverse ('displayindex')
        self.assertEquals(resolve(url).func, displayindex)
    
    def test_order_url_resolve(self):
        url = reverse ('displayorder')
        self.assertEquals(resolve(url).func, displayorder)
    
    def test_add_order_url_resolve(self):
        url = reverse ('addoperation')
        self.assertEquals(resolve(url).func, add_operation)
    
    def test_planning_url_resolve(self):
        url = reverse ('displaydata')
        self.assertEquals(resolve(url).func, displaydata)
    
    def test_planning_finish_url_resolve(self):
        url = reverse ('displayfinish')
        self.assertEquals(resolve(url).func, displayfinish)
    
    def test_add_planning_url_resolve(self):
        url = reverse ('addsubtask')
        self.assertEquals(resolve(url).func, add_subtask)
    
