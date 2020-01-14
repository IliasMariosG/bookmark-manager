require 'bookmark'

describe Bookmark do
  
  describe '#view_all_bookmarks' do
    it 'return a list of bookmarks' do
      expect(Bookmark.new.view_all_bookmarks).to include('http://www.makersacademy.com')
      expect(Bookmark.new.view_all_bookmarks).to include('https://google.com')
      expect(Bookmark.new.view_all_bookmarks).to include('https://destroyallsoftware.com')
    end
  end
end