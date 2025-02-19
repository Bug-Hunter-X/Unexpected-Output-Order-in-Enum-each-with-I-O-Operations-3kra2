```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    Process.sleep(1000) # Simulate some work
  end
  IO.puts(x)
end)
```
This code seems simple, but it has a subtle problem. The `Enum.each` function does not guarantee the order of execution, particularly in the context of a multi-core system. If the process performing `IO.puts` is different for each element, the output may not be sequential.  Also, `Process.sleep` in a simple Enum.each could lead to unexpected delays or hangs depending on the code context.