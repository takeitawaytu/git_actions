from django.test import TestCase
from .views import MyView


class TestView(TestCase):

    def test_func(self):
        test_str = MyView._get_hello_str()
        assert_str = "Hello, World!"
        self.assertEqual(test_str, assert_str)
