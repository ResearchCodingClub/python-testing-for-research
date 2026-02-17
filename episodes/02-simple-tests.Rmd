---
title: 'Simple Tests'
teaching: 10
exercises: 2
---

:::::::::::::::::::::::::::::::::::::: questions 

- How to write a simple test?
- How to run the test?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Write a basic test.
- Run the test.
- Understand its output in the terminal.

::::::::::::::::::::::::::::::::::::::::::::::::

## Your first test

The most basic thing you will want to do in a test is check that an output for a
function is correct by checking that it is equal to a certain value.

Let's take the `add` function example from the previous chapter and the test we
conceptualised for it and write it in code. We'll aim to write the test in such
a way that it can be run using Pytest, the most commonly used testing framework
in Python.

- Make a folder called `my_project` (or whatever you want to call it for these
  lessons) and inside it, create a file called 'calculator.py', and another
  file called 'test_calculator.py'.

Your directory structure should look like this:

```bash
project_directory/
│
├── calculator.py
└── test_calculator.py
```

`calculator.py` will contain our Python functions that we want to test, and
`test_calculator.py` will contain our tests for those functions.

- In `calculator.py`, write the add function:

```python
def add(a, b):
    return a + b
```

- And in `test_calculator.py`, write the test for the add function that we
  conceptualised in the previous lesson, but use the `assert` keyword in place
  of if statements and print functions:

```python
# Import the add function so the test can use it
from calculator import add

def test_add():
    # Check that it adds two positive integers
    assert add(1, 2) == 3

    # Check that it adds zero
    assert add(5, 0) == 5

    # Check that it adds two negative integers
    assert add(-1, -2) == -3
```

The `assert` statement will crash the test by raising an `AssertionError` if
the condition following it is false. Pytest uses these to tell that the test
has failed.

This system of placing functions in a file and then tests for those functions in
another file is a common pattern in software development. It allows you to keep your
code organised and separate your tests from your actual code.

With Pytest, the expectation is to name your test files and functions with the
prefix `test_`. If you do so, Pytest will automatically find and execute each
test function.

Now, let's run the test. We can do this by running the following command in the terminal:

(make sure you're in the `my_project` directory before running this command)

```bash
❯ pytest
```

This command tells Pytest to run all the tests in the current directory.

When you run the test, you should see that the test runs successfully,
indicated by some <span style="color:green">**green**</span>. text in the
terminal. We will go through the output and what it means in the next lesson,
but for now, know that <span style="color:green">**green**</span> means that
the test passed, and <span style="color:red">**red**</span> means that the test
failed.

Try changing the `add` function to return the wrong value, and run the test
again to see that the test now fails and the text turns <span
style="color:red">**red**</span> - neat! If this was a real testing situation,
we would know to investigate the `add` function to see why it's not behaving as
expected.


::::::::::::::::::::::::::::::::::::: challenge 

## Write a test for a multiply function

Try using what we have covered to write a test for a `multiply` function that
multiplies two numbers together.

- Place this multiply function in `calculator.py`:

```python
def multiply(a, b):
    return a * b
```

- Then write a test for this function in `test_calculator.py`. Remember to
  import the `multiply` function from `calculator.py` at the top of the file
  like this:

```python
from calculator import multiply
```

:::::::::::::::::::::::: solution

There are many different test cases that you could include, but it's important
to check that different types of cases are covered. A test for this function
could look like this:

```python
def test_multiply():
    # Check that positive numbers work
    assert multiply(5, 5) == 25
    # Check that multiplying by 1 works
    assert multiply(1, 5) == 5
    # Check that multiplying by 0 works
    assert multiply(0, 3) == 0
    # Check that negative numbers work
    assert multiply(-5, 2) == -10
```

:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints 

- The `assert` keyword is used to check if a statement is true.
- Pytest is invoked by running the command `pytest ./` in the terminal.
- `pytest` will run all the tests in the current directory, found by looking for files that start with `test_`.
- The output of a test is displayed in the terminal, with <span style="color:green">**green**</span> text indicating a successful test and <span style="color:red">**red**</span> text indicating a failed test.
- It's best practice to write tests in a separate file from the code they are testing. Eg: `scripts.py` and `test_scripts.py`.

::::::::::::::::::::::::::::::::::::::::::::::::

