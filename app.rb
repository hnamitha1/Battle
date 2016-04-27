require 'sinatra/base'
require './lib/fighter'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Fighter.new(params[:player_1_name])
    $player_2 = Fighter.new(params[:player_2_name])
    redirect '/play'
  end

  post '/attacking' do
    @player_1_hp = $player_1.hp
    Game.new.attack($player_2)
    @player_2_hp = $player_2.hp
    redirect '/attack'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
