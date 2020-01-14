require 'bookmark'

describe Bookmark do
  
  describe '#all' do
    it 'return a list of bookmarks' do
      book = Bookmark.new
      expect(book.all).to include('Bookmark 1')
      expect(book.all).to include('Bookmark 2')
    end
  end
end