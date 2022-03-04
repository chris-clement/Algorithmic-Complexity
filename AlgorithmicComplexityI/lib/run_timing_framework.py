from timing_framework import *
from create_sample_array import *
import matplotlib.pyplot as plt

sample_creator = SampleCreator()
sample_creator.create_random_array_of_arrays(50, 1000, 50)

timing_framework = TimingFramework(sample_creator._sample_array)
timing_framework.run_test_and_save_to_text(sample_creator._sample_array)
timing_framework.save_to_csv()

x = timing_framework._algo_timer_results_size
y = timing_framework._algo_timer_results_time
plt.plot(x, y)
plt.xlabel('Size of Array')
plt.ylabel('Time in microseconds')
plt.title('Algorithmic Efficiency')
plt.show()