require 'sinatra/base'
require_relative 'lib/player'


class BattleApp < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player1_name = Player.new(params[:player1_name])
    $player2_name = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1_name
    @player2 = $player2_name
    erb :play
  end

  get '/attack' do
    @player1 = $player1_name
    @player2 = $player2_name
    @player1.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end