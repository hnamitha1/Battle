feature "show hit points" do
  scenario "Player 2 displays its hit points" do
    visit('/')
    fill_in :player_1_name, with: 'Slasher'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Huzzah mothafucka!'
    expect(page).to have_content 'Mittens: 20 Hit Points'
  end
end
