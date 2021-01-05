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
  "<div style='border: 2px dashed red'>
    <img src='https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'>
  </div>"
end
