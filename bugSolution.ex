```elixir
list = [1, 2, 3, 4, 5]

Enum.map(list, fn x ->
  if x == 3 do
    Process.sleep(1000) # Simulate some work
  end
  IO.puts(x)
  x
end)
```
This solution uses `Enum.map`, which guarantees sequential processing regardless of I/O or other operations. Note that the result of Enum.map is discarded since the `IO.puts` side effect is the desired outcome.  If you need to return a transformed list, adjust accordingly. This approach ensures that the output reflects the order of elements in the initial list.