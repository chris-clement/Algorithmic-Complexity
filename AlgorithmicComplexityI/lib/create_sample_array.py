
from numpy import random

class SampleCreator:

  def __init__(self):
    self._sample_array = []

  def create_random_array_of_arrays(self, start_size, end_size, increment):
    i = start_size
    while i <= end_size:
      array = random.randint(10, size = (i)).tolist()
      self._sample_array.append(array)
      i += increment