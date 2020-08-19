feature 'View hitpoints' do
  scenario 'See players hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Player One vs Player Two'
    expect(page).to have_content 'Player Two: 100HP'
  end
end