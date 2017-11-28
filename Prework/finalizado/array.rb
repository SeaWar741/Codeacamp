array = [10,20,5,6]

b = array.to_enum
begin
  def sum (index)
  index + 20
 end
 p sum(b.next)
 p sum(b.next)
 p sum(b.next)
 p sum(b.next)
end while array[3] == 26