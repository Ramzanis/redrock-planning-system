from http import client
from urllib import response
from django.test import Client, TestCase
from django.urls import reverse
from redrock.models import *

class TestViews(TestCase):
    def test_subtask_list_GET(self):
        client = Client()

        response = client.get(reverse('displaydata'))

        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, 'redrock/subtask.html')