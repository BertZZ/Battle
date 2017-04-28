require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Application
  enable :sessions

  get'/' do
    erb(:index)
  end

  post'/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect to('/play')
  end

  get'/play' do
    @player1 = $player1
    @player2 = $player2
    @hp1 = $player1.hit_points
    @hp2 = $player2.hit_points
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    Game.new.attack(@player2)
    erb(:attack)
  end
end
