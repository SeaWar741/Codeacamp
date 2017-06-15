a = [["Torre","Caballo","Alfil","Rey","Reina","Alfil","Caballo","Torre"],["Peon","Peon","Peon","Peon","Peon","Peon","Peon","Peon"]]
	y = a.each.first(1) 
	y do |x|
	x.each do  |s|	
	 	p "#{s}-A"
	 end
	end




