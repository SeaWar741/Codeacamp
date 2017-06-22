class Cat
  CAT_YEARS = 7

  attr_accessor :age

  def initialize(age)
    @age = age 
  end

  def es_mayor_que?(arg)
    age > arg.age
  end

protected
  def age
    @age * CAT_YEARS
  end
end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.es_mayor_que?(peto) == false
#=>true
