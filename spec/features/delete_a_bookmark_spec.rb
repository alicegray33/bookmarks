feature 'Deleting a bookmark' do
  scenario 'user can delete a bookmark' do
    Bookmark.create(url: 'http://www.google.co.uk', title: 'Google')
    visit('/bookmarks')
    expect(page).to have_link('Google', href: 'http://www.google.co.uk')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Google', href: 'http://www.google.co.uk')
  end
end