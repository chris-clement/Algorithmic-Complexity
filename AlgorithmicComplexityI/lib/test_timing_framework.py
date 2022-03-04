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
  assert timing_framework.my_sort([-3, 5, 2, 4, 8, 9, 33, 2, 4, -8, 4, 11, 2, 2, 6, 11, 14]) == [-8, -3, 2, 2, 2, 2, 4, 4, 4, 5, 6, 8, 9, 11, 11, 14, 33]

def test_find_duplicates():
  timing_framework = TimingFramework([3, 1, 2])
  assert isinstance(timing_framework.find_duplicates([1, 2, 2, 3]), list) == True
  assert timing_framework.find_duplicates(['hi', 'hi', 'bye', 'cya']) == ['hi']
  assert timing_framework.find_duplicates(['hi', 'bye', 'hi', 'bye', 'should']).sort() == ['hi', 'bye'].sort()
  assert timing_framework.find_duplicates(['hi', 'hi', 'hi', 'hi', 'hi']) == ['hi']





