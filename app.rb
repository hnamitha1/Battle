require 'sinatra/base'
require './lib/fighter'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Fighter.new(params[:player_1_name])
    @player_2 = Fighter.new(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/attack' do
    @game = Game.instance
    @game.attack(@game.inactive_player)
    @game.change_active_player
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
