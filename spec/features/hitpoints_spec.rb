feature 'Hitpoints' do
  scenario 'Display Hitpoints'do
    sign_in_and_play
    expect(page).to have_content('Bertie has 100 hitpoints')
    expect(page).to have_content('Alex has 100 hitpoints')
  end
end
