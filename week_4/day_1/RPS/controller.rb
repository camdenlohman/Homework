require ('sinatra')
require ('sinatra/contrib/all')
require('pry')
require_relative('./models/rps')

require('json')

get '/' do
  erb(:home)
end

get '/test' do
  erb(:home_test)
end

get '/game/:mov1/:mov2' do
  game = Rps.new(params[:mov1].to_s,params[:mov2].to_s)
  @result = game.play()
  erb(:result)
end

get '/html' do
  send_file('./views/index.html')
end