require 'benchmark'

x = Benchmark.realtime do
	def fibonacci_iterative( n )
	    return  n  if n <= 1 
	    fibonacci_iterative( n - 1 ) + fibonacci_iterative( n - 2 )
	end
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5
p fibonacci_iterative(6) == 8
p fibonacci_iterative(7) == 13
p fibonacci_iterative(8) == 21
p fibonacci_iterative(9) == 34
p fibonacci_iterative(10) == 55
p fibonacci_iterative(11) == 89
p fibonacci_iterative(12) == 144
p fibonacci_iterative(13) == 233
end 


y = Benchmark.realtime do 
	def fibonacci_recursive (nth)
	  if nth < 2
	    nth
	  else
	    fibonacci_recursive(nth-1) + fibonacci_recursive(nth-2)
	  end
	end
p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5
p fibonacci_recursive(7) == 13
p fibonacci_recursive(8) == 21
p fibonacci_recursive(9) == 34
p fibonacci_recursive(10) == 55
p fibonacci_recursive(11) == 89
p fibonacci_recursive(12) == 144
p fibonacci_recursive(13) == 233
end

#test
puts x
puts y