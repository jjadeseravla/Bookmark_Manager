require 'sinatra/base'
require_relative './models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    @links = Link.all
    erb :index
  end

  get '/add_link' do
    erb :add_link
  end

  post '/create_link' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/'
  end
end
