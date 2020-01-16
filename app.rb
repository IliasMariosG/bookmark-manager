require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  
  get '/' do
    @bookmarks = Bookmark.view_all_bookmarks
    erb :index
  end

  post '/bookmark' do
    Bookmark.create(title: params[:create_title], url: params[:create_url])
    redirect '/'
  end

  run! if app_file == $0
end