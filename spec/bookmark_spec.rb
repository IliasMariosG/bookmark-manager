require 'bookmark'

describe Bookmark do
  
  describe '#view_all_bookmarks' do
    it 'returns a list of bookmarks' do
      bookmarks = PG.connect(dbname: 'bookmark_manager_test')

      bookmarks.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      bookmarks.exec("INSERT INTO bookmarks (url) VALUES ('https://google.com');")
      bookmarks.exec("INSERT INTO bookmarks (url) VALUES ('https://destroyallsoftware.com');")
      
      expect(Bookmark.new.view_all_bookmarks).to include('http://www.makersacademy.com')
      expect(Bookmark.new.view_all_bookmarks).to include('https://google.com')
      expect(Bookmark.new.view_all_bookmarks).to include('https://destroyallsoftware.com')
    end
  end
end