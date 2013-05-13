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

beginning = Time.now
puts fib_dprog 35
ending = Time.now

puts "It took #{(ending - beginning).to_f} seconds to complete with n = 35"