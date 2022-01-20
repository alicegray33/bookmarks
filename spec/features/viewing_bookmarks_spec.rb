feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: "http://makers.tech", title: "Makers")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Something")
    Bookmark.create(url: "http://www.google.com", title: "Google")

    visit('/bookmarks')
    expect(page).to have_link("Makers", href: "http://makers.tech")
    expect(page).to have_link("Something", href: "http://www.destroyallsoftware.com")
    expect(page).to have_link("Google", href: "http://www.google.com")
  end
end
