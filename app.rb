require 'sinatra/base'
require './lib/user'

class BookmarkManager < Sinatra::Base
  get '/' do
    user = User.new
    @bookmarks = user.bookmarks
    erb :index
  end

  run! if app_file == $0
end