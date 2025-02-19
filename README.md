# Elixir Enum.each Order Issue

This repository demonstrates a subtle issue with the order of execution in Elixir's `Enum.each` function when combined with I/O operations or time-consuming tasks.  While `Enum.each` typically processes items sequentially, this behavior is not strictly guaranteed, particularly in a multi-core environment where multiple processes could be involved.

The `bug.ex` file shows the example code, illustrating how the output order can be unexpected.  The `bugSolution.ex` file provides a solution using `Enum.map` for guaranteed order.

This issue highlights the importance of understanding concurrency implications in Elixir and choosing appropriate iteration methods based on your requirements.