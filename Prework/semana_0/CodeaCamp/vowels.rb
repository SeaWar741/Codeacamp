require "sinatra"
get "/" do
  def vowels(name)
    vocales = name.count"\\aeiouAEIOU"
    "My name is #{name} and it has #{vocales} vowels"
  end

  vowels("El agua ligera")
end