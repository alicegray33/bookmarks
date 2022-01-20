require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      Bookmark.create(url: "http://makers.tech", title: "Makers")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Something")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      bookmarks = Bookmark.all

      expect(bookmarks[0].url).to eq "http://makers.tech"
      expect(bookmarks[0].title).to eq "Makers"
    end
  end
  describe '.create' do
    it 'adds a bookmark' do
      bookmark = Bookmark.create(url: "http://www.example.org", title: "Test Bookmark")

      expect(bookmark.url).to eq "http://www.example.org"
      expect(bookmark.title).to eq 'Test Bookmark'

    end
  end
  describe '.delete' do
    it 'deletes a bookmark' do
      bookmark = Bookmark.create(url: "http://makers.tech", title: "Makers")

      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 0

    end
  end
end
