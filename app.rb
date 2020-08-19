require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'


class BattleApp < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player_one
    @player2 = $game.player_two
    erb :play
  end

  get '/attack' do
    @player1 = $game.player_one
    @player2 = $game.player_two
    $game.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end