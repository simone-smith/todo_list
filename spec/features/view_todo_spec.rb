feature 'View todo items' do
  scenario 'entering a second item and viewing list' do
    visit('/')
    fill_in :item, with: 'Clean flat'
    click_button 'Submit'
    expect(page).to have_content "Clean flat saved to the list!\nFull todo list:\nBuy milk Clean flat"
  end
end
