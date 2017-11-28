def decade (year)
  case year
  when 1920..1929
    p "Twenties"
  when 1940..1949
    p "Forties"
  when 1950..1959
    p "Fifties"
  when 1960..1969
    p "Sixties"
  when 1970..1979
    p "Seventies"
  when 1980..1989
    p "Eighties"
  when 1990..1999
    p "Nineties"
  else
    p "Years"
  end
end

p decade(1920) == "Twenties"
p decade(1943) == "Forties"
p decade(1952) == "Fifties"
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"