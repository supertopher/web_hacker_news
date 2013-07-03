post '/posts' do
  post = Post.new(params[:post])
  if post.save
    erb :index
  else
    erb :'posts/new'
  end
end

get '/users/:id' do |id|
  @user = User.find_by_id(id)
  erb :'users/show'
end
