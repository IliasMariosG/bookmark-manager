require 'pg'

class Bookmark

  def view_all_bookmarks
    bookmarks = PG.connect(:dbname => 'bookmark_manager')
    result = bookmarks.exec('SELECT * FROM bookmarks')
    
    result.map do |element|
     element['url']
    end
  end

end