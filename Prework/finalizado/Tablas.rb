 
 def multiplication_tables(number)
    (1..number).each do |i|  # del 1 al número que se le da. 
      (1..10).each do |a| # del 1 al 10.


      print "#{i*a}\t"  #multiplica i por a y da el espacio que ayuda a organizar las tablas

      end
      puts
    end
  end 

multiplication_tables(5)
multiplication_tables(7) 

