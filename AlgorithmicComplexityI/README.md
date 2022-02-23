# About this Chapter

This is an algorithm project I worked on based on the following course [Algorithmic Complexity](https://github.com/makersacademy/course/tree/main/algorithmic_complexity)

# What I did

I created a timing_framework to measure time complexity of in built algorithmic functions.

I tested the following methods: 

- last
- reverse
- shuffle
- sort

## Approach

I used TDD to build out a TimingFramework class. 

This will allow me to reuse this file in order to test other algorithms, including ones I go on to build myself.

The run_algo_timer method uses Process.clock_gettime(Process::CLOCK_MONOTONIC). This gives nanosecond precision and seemed most appropriate for my testing.

## How to use

1. In the timing_framework.rb file update run_algo_timer to select what algo you want to test.

````
array.sort
````

This can be changed to sort, reverse, last, shuffle or any other method you require.

2. In the command line run irb while requiring the file.

````
chrisclement@Chriss-MacBook-Air AlgorithmicComplexityI % irb -r ./lib/timing_framework.rb
````

3. Create an instance of the TimingFramework class

````
3.0.0 :001 > example = TimingFramework.new
````
4. Call the method run_test_and_save_to_text method.

Input number of repitions as the first argument, the start size of the array for the second, the end size of the array as the third and increment as the fourth.
````
example.run_test_and_save_to_text(10, 5000, 100000, 5000)
done
 => nil
 ````
 You will get a 'done' when it finishes running

 5. Data is saved in data.txt

 6. Use the data as you wish. I copied mine to a google sheets document and graphed the results.

## Results

Data can be found [here](https://docs.google.com/spreadsheets/d/14uYViN3dlMPi54IksSeizhh68CMMMzmi9XTWEdzgLTM/edit?usp=sharing)

<img src='./lib/graph.jpeg'>


