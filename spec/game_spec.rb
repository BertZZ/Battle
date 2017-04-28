require 'game'

describe Game do
subject(:game) { described_class.new("Bertie", player2) }
let (:player1) { double :player }
let (:player2) { double :player }

 it 'Initializes with 2 players' do
  game = Game.new('Bertie', 'Ben')
  expect(game.player1).to eq 'Bertie'
 end

  describe '#attack' do
   it 'damages the player' do
     expect(player2).to receive(:receive_damage)
     subject.attack
   end
 end
end
