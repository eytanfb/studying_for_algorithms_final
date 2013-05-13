def fib_recursive(n)
  
  return 0 if n == 0
  return 1 if n == 1
  return fib_recursive(n-1)+fib_recursive(n-2)
  
end

puts fib_recursive 0
puts fib_recursive 1
puts fib_recursive 5

beginning = Time.now
puts fib_recursive 35
ending = Time.now

puts "It took #{(ending - beginning).to_f} seconds to complete with n = 35"
