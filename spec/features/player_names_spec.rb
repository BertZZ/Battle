feature 'Player names' do
  scenario 'Can enter both players names in a form' do
    visit('/')
    fill_in('player1', with: 'Bertie')
    fill_in('player2', with: 'Alex')
  end
end
