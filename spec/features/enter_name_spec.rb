feature 'Entering player names' do
  scenario 'Can enter name and submit form' do
    sign_in_and_play
    expect(page).to have_content 'Player One vs Player Two'
  end
end