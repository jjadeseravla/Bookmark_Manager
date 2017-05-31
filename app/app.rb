require 'sinatra/base'
require_relative 'data_mapper_setup'

ENV["RACK_ENV"] ||= "development"

class BookmarkManager < Sinatra::Base

  get '/' do
    @links = Link.all
    erb :index
  end

  post '/' do
    link = Link.new(url: params[:url], title: params[:title])
    tag = Tag.first_or_create(name: params[:tags])
    link.tags << tag
    link.save
    redirect '/'
  end

  get '/add_link' do
    erb :add_link
  end

end
