from django.http import HttpResponse
from django.views import View


class MyView(View):
    @staticmethod
    def _get_hello_str():
        return "Hello, World!"

    def get(self, request, *args, **kwargs):
        hello_str = self._get_hello_str()
        return HttpResponse(hello_str)
