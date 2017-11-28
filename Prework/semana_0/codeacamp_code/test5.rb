def multiplication_tables (num)
(1..num).each do |y|
(1..10).each do |x|
 print "#{y * x}\t" 
end
puts 
end  
end

multiplication_tables (5)
multiplication_tables (7)