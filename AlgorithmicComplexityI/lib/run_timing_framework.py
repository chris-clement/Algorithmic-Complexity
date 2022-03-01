from timing_framework import *
import matplotlib.pyplot as plt

example = TimingFramework()

example.run_test_and_save_to_text(1, 5000, 100000, 5000)

x = example._algo_timer_results_size
y = example._algo_timer_results_time
plt.plot(x, y)
plt.xlabel('Size of Array')
plt.ylabel('Time in microseconds')
plt.title('Algorithmic Efficiency')
plt.show()