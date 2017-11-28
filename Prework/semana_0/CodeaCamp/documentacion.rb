a = "hola mundo"

#[]

  a[1]  #->o
  a[-3,5] #->ndo
  a[-4,4] #->u

#[]=

  a[0]= "b"

#capitalize

  a.capitalize

#chr

  a.chr

#count

  a.count "la"

#empty?

  "vacio".empty?

  "".empty?

#sub

  "hola".sub(/[o]/, '*')

#gsub
  "hola".gsub(/[aeiou]/, '+')

#include?
  "hola?".include? "io"
  "hola?".include? ?l

#index
  "hola".index('a')

#reverse
  "correr".reverse

#split
  "hola".split
  "hola mundo".split("undo")

#strip
  p "       hola       ".strip