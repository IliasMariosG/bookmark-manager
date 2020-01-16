require 'pg'

class Bookmark
  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url
  end

  def self.view_all_bookmarks
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(:dbname => 'bookmark_manager_test')
    else
      connection = PG.connect(:dbname => 'bookmark_manager')
    end

    result = connection.exec('SELECT * FROM bookmarks')
    result.map do |element|
     Bookmark.new(id: element['id'], title: element['title'], url: element['url'])
    end
  end

  def self.create(title:, url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(:dbname => 'bookmark_manager_test')
    else
      connection = PG.connect(:dbname => 'bookmark_manager')
    end

    result = connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') ")
  end
end