post '/posts' do
  post = Post.new(params[:post])
  if post.save
    erb :index
  else
    erb :'posts/new'
  end
end

get '/posts/new' do
  erb :'posts/new'
end
