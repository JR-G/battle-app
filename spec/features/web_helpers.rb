def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Player One'
  fill_in :player2_name, with: 'Player Two'
  click_button 'Submit'
end