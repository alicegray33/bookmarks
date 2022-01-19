require 'pg'

class Bookmark
  def self.all
    if ENV['Environment'] == 'test'
      connect = PG.connect( dbname: 'bookmark_manager_test' )
    else
      connect = PG.connect( dbname: 'bookmark_manager' )
    end
    connect.exec( "SELECT * FROM bookmarks;" ) do |result|
      result.map { |bookmark| bookmark['url'] }
    end   
  end

  def self.create(url:)
    if ENV['Environment'] == 'test'
      connect = PG.connect( dbname: 'bookmark_manager_test' )
    else
      connect = PG.connect( dbname: 'bookmark_manager' )
    end

    connect.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")

  end
end
