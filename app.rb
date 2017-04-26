require 'sinatra/base'

class Battle < Sinatra::Application
  enable :sessions

  get'/' do
    erb(:index)
  end

  post'/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    session[:player1] = @player1
    session[:player2] = @player2
    redirect to('/play')
  end

  get'/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_hp = 100
    @player2_hp = 100
    session[:player1_hp]= @player1_hp
    session[:player2_hp]= @player2_hp
    erb(:play)
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end
end
