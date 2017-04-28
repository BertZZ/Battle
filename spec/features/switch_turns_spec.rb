describe 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Bertie's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play_and_attack
      click_button "Switch"
      expect(page).not_to have_content "Bertie's turn"
      expect(page).to have_content "Alex's turn"
    end
  end
end
