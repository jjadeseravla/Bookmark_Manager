require 'sinatra/base'
require_relative './models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    @links = Link.all
    erb :index
  end

  post '/' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/'
  end

  get '/add_link' do
    erb :add_link
  end

end
