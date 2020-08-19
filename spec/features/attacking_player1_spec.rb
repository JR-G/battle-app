feature 'Attacking a player' do
  scenario 'Receive confirmation after an attack' do
    sign_in_and_play
    click_link "Attack Player Two"
    click_link "Attack Player One"
    expect(page).to have_content 'Player Two attacked Player One'
  end
end