require 'benchmark'

MAXN = 45
UNKNOWN = -1
F = []

def fib_iter(n)
  
  F[n] = fib_iter(n-1) + fib_iter(n-2) if F[n] == UNKNOWN
  return F[n]
  
end

def fib_iter_driver(n)
  
  F[0] = 0
  F[1] = 1
  
  for num in 2..n
    F[num] = UNKNOWN
  end  
    
  return fib_iter(n)
    
end

puts fib_iter_driver 0
puts fib_iter_driver 1
puts fib_iter_driver 5

time = Benchmark.realtime {
    puts fib_iter_driver 35
}

puts "It took #{time*1000} milliseconds to complete with n = 35"
