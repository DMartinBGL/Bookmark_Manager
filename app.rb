require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    bookmarks = [
              "http://www.amazon.co.uk",
              "http://www.box.co.uk",
              "http://www.ebay.co./uk"
             ]
  
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end

  