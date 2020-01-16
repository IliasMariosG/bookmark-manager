require 'pg'

p "Setting up test databse..."

def setup_test_database
  bookmarks = PG.connect(dbname: 'bookmark_manager_test')

  # Empty the bookmarks table
  bookmarks.exec("TRUNCATE bookmarks;")
end