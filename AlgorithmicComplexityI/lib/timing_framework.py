# test reverse using array[::-1]
# test last using array[-1]

import time
import csv

class TimingFramework:

  def __init__(self, sample_array):
    self._sample_array = sample_array
    self._algo_timer_results = []
    self._algo_timer_results_size = []
    self._algo_timer_results_time = []  
      
  def run_algo_timer(self, array_of_arrays):
    for array in array_of_arrays:
      size = len(array)
      start = time.monotonic_ns()
      # change below what algo you want to test
      array.sort()
      finish = time.monotonic_ns()
      time_in_micros = (finish - start) / 1000
      self._algo_timer_results.append({'size': size, 'time': time_in_micros})

  def run_test(self, array):
    self._algo_timer_results = []
    self.run_algo_timer(array)

  def run_test_and_save_to_text(self, array):
    self.run_test(array)
    f = open("python_data.txt", "w")
    f.write("Size\n")
    for result in self._algo_timer_results:
      f.write(f'{result.get("size")}\n')
      self._algo_timer_results_size.append(result.get("size"))
    f.write("Time\n")
    for result in self._algo_timer_results:
      f.write(f'{result.get("time")}\n')
      self._algo_timer_results_time.append(result.get("time"))
    f.close

  def save_to_csv(self):
    with open("excel_doc.csv", "w", newline="") as csvfile:
      writer = csv.DictWriter(csvfile, fieldnames = set().union(*(dictionary.keys() for dictionary in self._algo_timer_results)) )
      writer.writeheader()
      writer.writerows(self._algo_timer_results)
  
  def my_reverse(self, array):
    reversed_array = []
    for i in range(len(array)):
      reversed_array.append(array.pop())
    return reversed_array

  def my_sort(self, array):
    for j in range(len(array)):
      for i in range(len(array) - 1):
        if array[i] > array[i + 1]:
          x = array[i]
          y = array[i + 1]
          array[i], array[i + 1] = y, x
    return array

