require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Application
  enable :sessions

  get'/' do
    erb(:index)
  end

  post'/names' do
    player1 = Player.new params[:player1]
    player2 = Player.new params[:player2]
    @game = Game.create(player1, player2)
    redirect to('/play')
  end

  before do
    @game = Game.instance
  end

  get'/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    @game.switch_turn
    redirect '/loose' if @game.game_over?
    erb(:attack)
  end

  get '/loose' do
    erb(:game_over)
  end
end
