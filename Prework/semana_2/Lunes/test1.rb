def hello(n1,n2)
  p yield n1,n2
end

hello(20,30) {|n1,n2| n1+=n2}
hello(20,30) {|n1,n2| n2-=n1}