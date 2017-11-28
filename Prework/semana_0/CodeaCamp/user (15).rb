before '/play/:id' do
  unless session[:id]
    redirect to('/')
  end 
end

get '/' do
  erb :login
end

get '/error_login' do
  @user_message = "Usuario incorrecto"
  erb :login
end

get '/play/:id' do

  @user_name = request.session[:id]

  erb :play_maraton
end

post '/play' do
  user = User.find_by(email: params[:email], password: params[:password])
  if user != nil
    session[:id] = user.id
    redirect to ("/play/#{user.id}")
  else
    redirect to ('/error_login')
  end
end

post '/play/deck' do
  if params[:arte] == "Arte"
    @deck = Deck.find_by(name: "Arte").cards
    Round.create(user_id: request.session[:id], deck_id: 3, guess_id: nil)
  elsif params[:geografia] == "Geografia"
    @deck = Deck.find_by(name: "Geografia").cards
    Round.create(user_id: request.session[:id], deck_id: 1, guess_id: nil)
  elsif params[:deportes] == "Deportes"
    @deck = Deck.find_by(name: "Deportes").cards
    Round.create(user_id: request.session[:id], deck_id: 2, guess_id: nil)
  end
  erb :play_deck
end

get '/results_round' do
  counter_correct = 0
  counter_incorrect = 0
  params.each do |answer|
    id = answer[0].to_i
    ans = answer[1] 
    ans_correct = Answer.find_by(id: id)
    if ans_correct.correct_answer == ans
     counter_correct += 1
    else
      counter_incorrect += 1
    end
    
  end
  @guess = Guess.create(answers_correct: counter_correct, answers_incorrect: counter_incorrect)
  round_last = Round.last 
  round_last.update(guess_id: @guess.id)
  erb :round_results
end


get '/logout' do
  session.clear
  redirect to("/")
end

get '/history' do
  @user_name = User.find_by(id: request.session[:id])
  search_rounds = User.find_by(id: request.session[:id]).rounds
  @array_rounds = []
  search_rounds.each do |round|
    @array_rounds << Guess.find_by(id: round.guess_id)
  end
  erb :history
end


