# test reverse using array[::-1]
# test last using array[-1]

import time
from numpy import random

class TimingFramework:

  def __init__(self):
    self._sample_array = []
    self._algo_timer_results = []
    self._algo_timer_results_size = []
    self._algo_timer_results_time = []

  def create_random_array_of_arrays(self, start_size, end_size, increment):
    i = start_size
    while i <= end_size:
      self._sample_array.append(random.randint(10, size = (i)))
      i += increment
  
      
  def run_algo_timer(self, array_of_arrays):
    for array in array_of_arrays:
      start = time.monotonic_ns()
      # change below what algo you want to test
      array[::-1]
      finish = time.monotonic_ns()
      time_in_micros = (finish - start) / 1000
      self._algo_timer_results.append({'size': len(array), 'time': time_in_micros})

  def run_test(self, start_size, end_size, increment):
    self._algo_timer_results = []
    self.create_random_array_of_arrays(start_size, end_size, increment)
    self.run_algo_timer(self._sample_array)

  def run_test_and_save_to_text(self, repitions, start_size, end_size, increment):
    i = 0
    while i < repitions:
      self.run_test(start_size, end_size, increment)
      i += 1
    f = open("./lib/python_data.txt", "w")
    f.write("Size\n")
    for result in self._algo_timer_results:
      f.write(f'{result.get("size")}\n')
      self._algo_timer_results_size.append(result.get("size"))
    f.write("Time\n")
    for result in self._algo_timer_results:
      f.write(f'{result.get("time")}\n')
      self._algo_timer_results_time.append(result.get("time"))
    f.close




example = TimingFramework()

example.run_test_and_save_to_text(10, 5000, 100000, 5000)
print(example._algo_timer_results_size)