feature 'Attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play_and_attack
    expect(page).to have_content('Bertie attacked Alex')
  end
  scenario 'Player 2 looses 10 hitpoints' do
    sign_in_and_play_and_attack
    expect(page).to have_content('Alex has 90 hit points remaining')
  end
end
