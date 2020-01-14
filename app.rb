require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  
  get '/' do
    @bookmarks = Bookmark.new.view_all_bookmarks
    erb :index
  end

  run! if app_file == $0
end