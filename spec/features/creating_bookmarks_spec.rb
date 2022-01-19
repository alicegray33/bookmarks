feature 'Creating bookmarks' do
  scenario 'adds a new bookmark to the database' do
    visit('bookmarks/new')
    fill_in('url', with: 'http://www.amazon.co.uk')
    click_button('Add')
    expect(page).to have_content 'http://www.amazon.co.uk'
  end
end