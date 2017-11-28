#hash-->person
person = {first_name: 'Bob', email: 'bob@mail.com', phone: '12345690'}
#obterner valor del key first_name
p person[:first_name]
#instertar un nuevo key y valor al hash
person [:occupation]= 'computer engineer at NASA'
#test
p person