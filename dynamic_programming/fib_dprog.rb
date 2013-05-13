require 'benchmark'

MAXN = 45
F = []

def fib_dprog(n)
  
  F[0] = 0
  F[1] = 1
  
  for i in 2..n
    F[i] = F[i-1] + F[i-2] 
  end
  
  return F[n]
  
end

puts fib_dprog 0
puts fib_dprog 1
puts fib_dprog 5

time = Benchmark.realtime {
    puts fib_dprog 35
}

puts "It took #{time*1000} milliseconds to complete with n = 35"