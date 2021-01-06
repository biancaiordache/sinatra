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

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
