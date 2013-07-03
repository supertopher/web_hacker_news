get '/signup' do
  
  erb :'users/new'
end


post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    erb :index
  else
    redirect '/signup'
  end
end
