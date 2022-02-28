from timing_framework import *

example = TimingFramework()
assert isinstance(example.my_reverse([1, 2, 3]), list) == True
assert example.my_reverse([1, 2, 3]) == [3, 2, 1]
print("Reverse tests pass")