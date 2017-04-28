require 'game'

describe Game do
subject(:game) { described_class.new(player_1 ,player_2) }
subject(:finished_game) { described_class.new(dead_player, player_2) }
let(:player_1) { double :player, hit_points: 100 }
let(:player_2) { double :player, hit_points: 100 }
let(:dead_player) { double :player, hit_points: 0 }


  it 'Initializes with 2 players' do
    game = Game.new('Bertie', 'Ben')
    expect(game.player1).to eq 'Bertie'
 end

 describe '#attack' do
   it 'damages the player' do
     expect(player_2).to receive(:receive_damage)
     subject.attack
   end
 end

 describe '#game_over?' do
  it 'returns false if no-one is at 0HP' do
    expect(game.game_over?).to be false
  end

    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
