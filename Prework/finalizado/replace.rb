#replace

def replace_vowels(array)

  (array).each do |a|

  p a.gsub(/[aeiou]/, 'x')

  end

end

replace_vowels(["banana", "apple"])

