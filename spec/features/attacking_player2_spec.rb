feature 'Attacking a player' do
  scenario 'Receive confirmation after an attack' do
    sign_in_and_play
    click_link "Attack Player Two"
    expect(page).to have_content 'Player One attacked Player Two'
  end
end