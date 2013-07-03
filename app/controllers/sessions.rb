get '/signin' do
  erb :'sessions/signin'
end

post '/session' do
  user = User.find_by_email(user[:email])
  if user && user.authenticate(user[:password])
    session[:user_id] = user.id
    erb :index
  else
    erb :'sessions/signin'
  end
end

delete '/signout' do
  session.clear  
end
