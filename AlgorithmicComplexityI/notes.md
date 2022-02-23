What is an algorithm?

- a sequence of steps that should be followed to solve a problem --> getting from an input to an output.

Example of an algorithm?

- a for each statement.
- a cooking recipe.
-- input is ingredients, output is finished meal.

What is complexity in reference to algorithmic complexity?

- Not just following the linear order of code.
- time
- memory (space complexity)
- efficiency
- difficulty --> cyclomatic complexity (readability)
- how it scales --> if input size doubles does the time it takes to run double for instance.


Cooking example

- input --> output
- 2 eggs --> omelette
- steps are: 
-- crack eggs 1 by 1 into bowl
-- mix eggs together
-- pour bowl into hot pan
-- wait for 10 mins

Time taken: 
Each egg break is 1 min. --> 2 mins
Mix is 1 min.
pour takes no time.
wait is 10 mins.
Total is 13 mins.

Now what if we use 200 eggs.

A) Batch Method.

Time taken: 

Each egg break is 1 min --> 200 mins
Mix is 1 min
pour takes no time
wait is 10 mins
Total is 211 mins.

B) 2 eggs at a time Method.

Each egg break is 1 min --> 2 mins
Mix is 1 min
pour takes no time
wait is 10 mins
Sub total is 13 mins.

Repeat 99 more times.

Total is 1300 mins

The batch way of making it is much more efficient for a larger number of eggs. For 2 eggs there is no difference between the method A and B.

Breaking it down into the constituent parts.

- The egg break takes the same time between both methods.
- The mix takes 1 min per start to finish of steps for method A. So a Total of 100 mins for 200 eggs. For method B it takes just 1 min. It scales a lot better.
- The same logic applies to the wait.

We can chart out algorithms to see how scalable they are. Example is shown in the AlgorithmGraph. 

This shows the algorithm time complexity. 
