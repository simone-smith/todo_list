feature 'Enter todo items' do
  scenario 'entering items' do
    visit('/')
    fill_in :item, with: 'Buy milk'
    click_button 'Submit'
    expect(page).to have_content 'Buy milk saved to the list!'
  end
end
