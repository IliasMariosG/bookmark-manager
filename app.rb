require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :method_override

  get '/' do
    @bookmarks = Bookmark.view_all_bookmarks
    erb :index
  end

  post '/bookmark' do
    Bookmark.create(title: params[:create_title], url: params[:create_url])
    redirect '/'
  end

  delete '/bookmark/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/'
  end

  run! if app_file == $0
end