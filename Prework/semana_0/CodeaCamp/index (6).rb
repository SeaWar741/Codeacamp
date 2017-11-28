#Metodo que verifica antes de que el usuario entre
before '/users/:id' do
  session[:id]
  unless session[:id]
    redirect to('/login')
  end 
end

##Metopdo que renderiza la vista para crear quizzes
get '/create_quiz' do
  erb :create_quiz
end

##Metopdo que renderiza la vista para crear quizzes
post '/created_quiz' do
  c_quiz(params)
  redirect to("/")
end

def c_quiz(params)
  quiz = params["quiz_name"]
  history = History.create(user_id: session[:id]) 
  current_quiz = Quiz.create(history_id: history.id, name: quiz) 
  c_question(params, current_quiz)
end

def c_question(params, quiz)
  questions = params["question_name"]
  questions.each do |question|
    text = question[1][1]
    Question.create(quiz_id: quiz.id, text: text)
  end
  c_choice(params, quiz)
end

def c_choice(params, quiz)
  p choices = params["choice_name"]
  choices.each do |choice|
    id_question = choice[1][0].to_i
    text = choice[1][1]
    Answer.create(quiz_id: quiz.id, question_id: id_question, text: text)
  end
  
end


#Ruta para terminar sesion
get '/logout' do
  session.clear
  redirect to("/")
end

#Metodo de inicio que lleva a la pantalla de inicio
get "/" do
  erb :welcome
end

get '/:url' do
  p url = params[:url]
  if url == "register"
    erb :register
  elsif url == "login"
    erb :login
  end
end

#MEtodo que lleva al index con su id como parametro
get '/users/:id' do
  erb :index
end


#Metodo que registra a un usuario
post '/register' do

  user = User.new(user_name: params[:user_name], email: params[:user_email], password: params[:user_password])

  if user.save
    session[:id] = user.id
    redirect to ("/users/#{user.id}")
  else
    @message_error = "El correo que ingreso ya fue registrado"
    erb :register    
  end
end

#Metodo que hace login de un usuario

post '/login' do
  user = User.authenticate(params[:user_email], params[:user_password])
  if user
    session[:id] = user.id
    redirect to ("/users/#{user.id}")
  else
    @message_error = "La contraseña no es correcta o su usuario no ha sido registrado"
    erb :login
  end
end

