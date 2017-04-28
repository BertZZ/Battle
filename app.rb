require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Application
  enable :sessions

  get'/' do
    erb(:index)
  end

  post'/names' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect to('/play')
  end

  get'/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack
    @game.switch_turn
    erb(:attack)
  end
end
