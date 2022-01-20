feature 'Creating bookmarks' do
  scenario 'adds a new bookmark to the database' do
    visit('bookmarks/new')
    fill_in('title', with: 'Amazon')
    fill_in('url', with: 'http://www.amazon.co.uk')
    click_button('Add')
    expect(page).to have_link('Amazon', href: 'http://www.amazon.co.uk')
  end
end
