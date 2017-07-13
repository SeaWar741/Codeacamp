def translate(sent)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = sent.split(' ')
    result = []

words.each_with_index do |word, i|
    #a cada palabra se le hace que tenga un indice 
    translation = ''
    qu = false
    #que contenga qu es por default falso
    if vowels.include? word[0]
        #si la palabra incluye una vocal como primer palabra una vocal 
        translation = word + 'ay'
        #se le añade un ay al final
        result.push(translation)
        #se imprime la traduccion
    else
        #si la palabra no cuenta con vocal como primer palabra entonces sucede esto:
        word = word.split('')
        count = 0
        word.each_with_index do |char, index|
            #a cada palabra se le asigna un indice
            if vowels.include? char
                #si las palabras tienen una vocal 
                if char == 'u' and translation[-1] == 'q'
                    #si la palabra es u y la traduccion menos una letra es q (esto para ver si la palabra incluye alguna "qu")
                    qu = true
                    #qu se vuelve true
                    translation = words[i][count + 1..words[i].length] + translation + 'uay'
                    #la traduccion se vuelve las palabras 
                    result.push(translation)
                    next
                end
                break
            else
                # para las que tienen qu en el medio
                if char == 'q' and word[i+1] == 'u'
                    qu = true
                    translation = words[i][count + 2..words[i].length] + 'quay'
                    result.push(translation)
                    next
                else
                    translation += char
                end
                count += 1
            end
        end
        # traduccion a las que no tienen qu
        if not qu
            translation = words[i][count..words[i].length] + translation + 'ay'
            result.push(translation)
        end
    end

end
result.join(' ')
end

#tests
puts translate('apple')                # "appleay"
puts translate("quiet")                # "ietquay"
puts translate("square")               # "aresquay"
puts translate("the quick brown fox")  # "ethay ickquay ownbray oxfay"