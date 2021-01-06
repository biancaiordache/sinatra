require 'sinatra'

set :session_secret, "secret"

get '/' do
  "hello!"
end

get '/secret' do
  "this is a secret message!"
end

get '/hiddenpath' do
  "you're in the cave"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @surname = params[:surname]
  erb(:index)
end
