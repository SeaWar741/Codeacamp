#usuarios
user_1= User.create(email: "humberto@mail.com", password: "humberto")
user_2= User.create(email: "arroyo@mail.com", password: "arroyo")
user_3= User.create(email: "cisneros@mail.com", password: "cisneros")

#Deck
deck_1 = Deck.create(name: "Geografia")
deck_2 = Deck.create(name: "Deportes")
deck_3 = Deck.create(name: "Arte")


#Questions geografia
card_1 = Card.create(deck_id: deck_1.id, question: "¿Cuál es el país menos turístico de Europa?.")
card_2 = Card.create(deck_id: deck_1.id, question: "¿A qué país pertenece la isla de Tasmania?")
card_3 = Card.create(deck_id: deck_1.id, question: "¿En cuál de los siguientes países NO hay ningún desierto?")
card_4 = Card.create(deck_id: deck_1.id, question: "¿Cuál es el código internacional para Cuba?")
card_5 = Card.create(deck_id: deck_1.id, question: "¿Cuál es la capital del estado de Arkansas?")

#Deportes preguntas
card_6 = Card.create(deck_id: deck_2.id, question: "¿Quién ganó dos veces tres campeonatos consecutivamente en la NBA?")
card_7 = Card.create(deck_id: deck_2.id, question: "¿Cuál es la última cinta en las artes marciales ?")
card_8 = Card.create(deck_id: deck_2.id, question: "¿Qué arte marcial utiliza mayor procentaje de extremidades inferiores?")
card_9 = Card.create(deck_id: deck_2.id, question: "¿Cómo apodaban a Alfblacko Di Stéfano?")
card_10 = Card.create(deck_id: deck_2.id, question: "¿Cómo se llama el ex-jugador del F.C Barcelona apellidado Stoichkov?")

#Arte preguntas
card_11 = Card.create(deck_id: deck_3.id, question: "¿Una fábula es un cuento que finaliza con una enseñanza que se llama…")
card_12 = Card.create(deck_id: deck_3.id, question: "¿De qué novela de Fiodor M. Dostoyevski es protagonista Raskolnikov?")
card_13 = Card.create(deck_id: deck_3.id, question: "¿Qué artista aparece retratado en “Las Meninas”?")
card_14 = Card.create(deck_id: deck_3.id, question: "¿Qué animal quería ser domesticado por El Principito?")
card_15 = Card.create(deck_id: deck_3.id, question: "¿Cómo se llama la restauradora del Ecce Homo de Borja?")


#geografia respuestas
answers_1 = Answer.create(card_id: card_1.id, option_a: "Armenia", option_b: "Liechtenstein", option_c: "Mexico", correct_answer: "Liechtenstein")
answers_2 = Answer.create(card_id: card_2.id, option_a: "Australia", option_b: "Portugal", option_c: "Usa", correct_answer: "Australia")
answers_3 = Answer.create(card_id: card_3.id, option_a: "España", option_b: "Chile", option_c: "Alemania", correct_answer: "Alemania")
answers_4 = Answer.create(card_id: card_4.id, option_a: "CA", option_b: "CU", option_c: "CB", correct_answer: "CU")
answers_5 = Answer.create(card_id: card_5.id, option_a: "Kansas", option_b: "Washington", option_c: "Little Rock", correct_answer: "Little Rock")

#Deportes respuestas
answers_6 = Answer.create(card_id: card_6.id, option_a: "Michael Jordan", option_b: "Lebron James", option_c: "Brian Scalabrine", correct_answer: "Michael Jordan")
answers_7 = Answer.create(card_id: card_7.id, option_a: "Roja", option_b: "Blanca", option_c: "Negra", correct_answer: "Negra")
answers_8 = Answer.create(card_id: card_8.id, option_a: "Karate", option_b: "Taekwondo", option_c: "Boxeo", correct_answer: "Taekwondo")
answers_9 = Answer.create(card_id: card_9.id, option_a: "La saeta rubia", option_b: "La pulga", option_c: "El crack", correct_answer: "La saeta rubia")
answers_10 = Answer.create(card_id: card_10.id, option_a: "Risto", option_b: "Cristo", option_c: "Hristo", correct_answer: "Hristo")

#Arte respuestas
answers_11 = Answer.create(card_id: card_11.id, option_a: "Poesía", option_b: "Refrán", option_c: "Moraleja", correct_answer: "Moraleja")
answers_12 = Answer.create(card_id: card_12.id, option_a: "El Jugador", option_b: "El idiota", option_c: "Crimen y Castigo", correct_answer: "Crimen y Castigo")
answers_13 = Answer.create(card_id: card_13.id, option_a: "Velázquez", option_b: "Miguel Ángel", option_c: "Sorolla", correct_answer: "Velázquez")
answers_14 = Answer.create(card_id: card_14.id, option_a: "Un perro", option_b: "Un zorro", option_c: "Un gato", correct_answer: "Un zorro")
answers_15 = Answer.create(card_id: card_15.id, option_a: "Lucía Giménez Sueco", option_b: "María Giménez Sueco", option_c: "Cecilia Giménez Sueco", correct_answer: "Cecilia Giménez Sueco")

# guess_1 = Guess.create(answers_correct: 10, answers_incorrect: 8)
# round_1= Round.create(user_id: user_1.id, deck_id: deck_1.id, guess_id: guess_1.id, answers_correct: 7, answers_incorrect: 11)
# guess_2 = Guess.create(answers_correct: 10, answers_incorrect: 8)
# round_2= Round.create(user_id: user_2.id, deck_id: deck_2.id, guess_id: guess_2.id, answers_correct: 5, answers_incorrect: 4)
# guess_3 = Guess.create(answers_correct: 10, answers_incorrect: 8)
# round_3= Round.create(user_id: user_3.id, deck_id: deck_3.id, guess_id: guess_3.id, answers_correct: 5, answers_incorrect: 4)



