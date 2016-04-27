feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Slasher'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Huzzah mothafucka!'
    expect(page).to have_content 'Slasher vs. Mittens'
  end
end
