import pytest
from timing_framework import *

def test_my_reverse():
  timing_framework = TimingFramework([1, 2, 3])
  assert isinstance(timing_framework.my_reverse([1, 2, 3]), list) == True
  assert timing_framework.my_reverse([1, 2, 3]) == [3, 2, 1]

def test_my_sort():
  timing_framework = TimingFramework([3, 1, 2])
  assert isinstance(timing_framework.my_sort([1, 2, 3]), list) == True
  assert timing_framework.my_sort([3, 1, 2]) == [1, 2, 3]
  assert timing_framework.my_sort([3, 4, 1, 2]) == [1, 2, 3, 4]
  assert timing_framework.my_sort([5, 1, 4, 2, 2, 0, 3]) == [0, 1, 2, 2, 3, 4, 5]



