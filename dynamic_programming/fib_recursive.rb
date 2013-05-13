require 'benchmark'

def fib_recursive(n)
  
  return 0 if n == 0
  return 1 if n == 1
  return fib_recursive(n-1)+fib_recursive(n-2)
  
end

puts fib_recursive 0
puts fib_recursive 1
puts fib_recursive 5

time = Benchmark.realtime {
    puts fib_recursive 35
}

puts "It took #{time*1000} milliseconds to complete with n = 35"

