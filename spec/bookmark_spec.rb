require 'bookmark'

describe Bookmark do
  
  describe '#view_all_bookmarks' do
    it 'returns a list of bookmarks' do
      bookmarks = PG.connect(dbname: 'bookmark_manager_test')

      bookmarks.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      bookmarks.exec("INSERT INTO bookmarks (url) VALUES ('https://google.com');")
      bookmarks.exec("INSERT INTO bookmarks (url) VALUES ('https://destroyallsoftware.com');")
      
      array_of_bookmarks = Bookmark.view_all_bookmarks

      expect(array_of_bookmarks[0].url).to include('http://www.makersacademy.com')
      expect(array_of_bookmarks[1].url).to include('https://google.com')
      expect(array_of_bookmarks[2].url).to include('https://destroyallsoftware.com')
    end
  end
end