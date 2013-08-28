###### GET ROUTES ########

get '/' do
  @categories = Category.all
  erb :index
end

get '/category/:id' do
  p params
  @category = Category.find(params[:id]) 
  @posts = @category.posts
  erb :category_view
end

get '/create_post/:id' do
  @category_name = Category.find(params[:id]).name
  erb :create_post
end 

###### POST ROUTES ########

post '/posts' do
  @new_post = Post.create(params[:post])

  erb :create_confirmation 
end
