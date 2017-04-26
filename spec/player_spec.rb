require 'player'

describe Player do
subject(:bertie) {Player.new('Bertie')}
subject(:alex) {Player.new('Alex')}
  describe '#name'do
    it 'returns a name' do
      expect(bertie.name).to eq 'Bertie'
    end
  end

  describe '#hit_points' do
      it 'returns the hit points' do
        expect(bertie.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    describe '#attack' do
      it 'damages the player' do
        expect(alex).to receive(:receive_damage)
        bertie.attack(alex)
      end
    end

    describe '#receive_damage' do
      it 'reduces the player hit points' do
        expect { alex.receive_damage }.to change { alex.hit_points }.by(-10)
      end
    end
   end
