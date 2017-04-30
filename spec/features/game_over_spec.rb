feature 'Game over' do
  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      attack_and_switch
      allow(Kernel).to receive(:rand).and_return(100)
    end

    scenario 'Player 1 loses' do
      19.times sign_in_and_play_and_attack
      expect(page).to have_content 'Berie loses!'
    end
    end
  end
end
