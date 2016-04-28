feature "show hit points" do
  scenario "Player 2 displays its hit points" do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 20 Hit Points'
  end
end
