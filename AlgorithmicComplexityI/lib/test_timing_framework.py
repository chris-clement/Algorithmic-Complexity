import pytest
from timing_framework import *

def test_my_reverse(monkeypatch):
  timing_framework = TimingFramework([1, 2, 3])
  assert isinstance(timing_framework.my_reverse([1, 2, 3]), list) == True
  assert timing_framework.my_reverse([1, 2, 3]) == [3, 2, 1]

