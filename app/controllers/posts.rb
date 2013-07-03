post '/posts' do
  post = Post.new(params[:post])
  if post.save
    redirect '/'
  else
    erb :'posts/new'
  end
end

get '/posts/new' do
  erb :'posts/new'
end

get 'posts/:id' do |id|
  @post = Post.find_by_id(id)
  @comments = Comment.where(post_id: @post.id)
  erb :'posts/show'
end
