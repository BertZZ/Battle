def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Bertie'
  fill_in 'player2', with: 'Alex'
  click_button 'Submit'
end

def sign_in_and_play_and_attack
  visit('/')
  fill_in 'player1', with: 'Bertie'
  fill_in 'player2', with: 'Alex'
  click_button 'Submit'
  click_button 'Attack'
end

def attack_and_switch
  click_button 'Attack'
  click_button 'Switch'
end
