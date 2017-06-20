	class Employee
		def initialize(name,email,salary,deposit_account)
	      @name = name
	      @email = email
	      @salary = salary
	      @deposit_account = deposit_account
	 	end

	 		def to_s
	 			new_m = @deposit_account.gsub(/[^0-9]+/,'')
	 			#toma el account y cambia todo el caracter que no sea un numero a un vacio
	 			new_m.gsub!(/\d{5}/) { |x|  }
	 			#toma el new_m y toma los 5 ultimos, los cambia a x. el \d es para que solo tome en cuenta a los numeros
	 			return "#{@name} <email: #{@email}> acct: *****#{new_m}"
	 			#imprime el name,email y el account de la manera requerida
	     		end


	      def coefficient
	    	coefficients = { 1 => 0...1_000, 1.2 => 1_000...2_000, 1.4 => 2_000...5_000, 1.5 => 5_000..10_000 }
		    coefficients.find { |coefficient, range| range.include? @salary }.first
		  end


		  def vacation_days
		    coefficient * 7  
		  end

		  def bonus
		    coefficient * 1000
		  end
	 end

	#test

	employee = Employee.new('Juan Perez', 'juan@gmail.com', 1_800, '123-456-512')

	employee.to_s
	# => "Juan Perez <email: juan@gmail.com> acct: *****6512"

	str = "The employee information is #{employee}"
	puts str
	# => "The employee information is Juan Perez <email: juan@gmail.com> acct: *****6512"

	puts str == "The employee information is Juan Perez <email: juan@gmail.com> acct: *****6512"

	puts employee.vacation_days == 8.4
	puts employee.bonus == 1_200