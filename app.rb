require 'sinatra'
require 'sinatra/reloader'
require 'haml'

get '/' do
  "Hello Sinatra"
  redirect to('/index')
end

get '/index' do
  "This is an index"
  @songs = [
    {
      title: 'Fly me to the moon',
      url: "https://www.youtube.com/watch?v=mQR0bXO_yI8"
    },
    {
      title: 'New York, New York',
      url: "https://www.youtube.com/watch?v=btFfXgUdIzY"
    },
    {
      title: 'My Way',
      url: "https://www.youtube.com/watch?v=6E2hYDIFDIU"
    }
  ]
  haml :default
end

get '/api/v1' do
  content_type :json
  {status: 'ok', messages: 'ok bro'}.to_json
end
