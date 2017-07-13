  def transale(word)
  words=word.split(" ")
  words.each do |x|
    if ["a","e","i","o","u"].include?x[0,1]
      x << ("ay")
    else
      x << ("#{x[0,1]}ay")
      x[0,1]=""
    end
  end
  words.join(" ")
end