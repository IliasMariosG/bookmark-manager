require 'pg'

class Bookmark

  def view_all_bookmarks
    if ENV['ENVIRONMENT'] == 'test'
      bookmarks = PG.connect(:dbname => 'bookmark_manager_test')
    else
      bookmarks = PG.connect(:dbname => 'bookmark_manager')
    end
    result = bookmarks.exec('SELECT * FROM bookmarks')
    result.map do |element|
     element['url']
    end
  end

end