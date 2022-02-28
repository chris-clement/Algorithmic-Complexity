Approaching a problem

- TDD
- Input vs Output tables
- Pseudocode 
- Writing in plain english
- User Stories

Start with input vs output table, a specific example, then write first test. Then take next example. 

Sorting example.

Input vs Output

[] --> []
[2, 1, 4] --> [1, 2, 4]

Assigning Students into groups

Given a list of students, and a target number of groups, create an algorithm to assign students into the right number of groups, of equivalent sizes (groups cannot have more than 1 person difference).

Input vs Output

Array --> Array of arrays

['Alice', 'Bob', 'Chris', 'Daisy', 'Evan'], 3
--> [['Chris', 'Evan'], ['Alice', 'Daisy'], ['Bob']]

['Alice', 'Bob'], 2 --> [['Alice'], ['Bob']]

['Bob'], 1 --> ['Bob']

Edge Cases

Not a string in array e.g. a number --> Do it anyway
Duplicate Names --> Do it anyway
Number of groups is 0. --> Throw error
Negative number of groups. --> Throw error
1 person but 2 groups required.--> Throw error

Function signature comprises of the following: 

- type of parameter
- name of parameters
- type of return values
- name of function

