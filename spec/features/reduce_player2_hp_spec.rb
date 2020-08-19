feature 'Attacking a player' do
  scenario 'Reduce players HP' do
    sign_in_and_play
    click_link "Attack Player Two"
    expect(page).to have_content 'Player Two: 50HP'
  end
end