ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base

  get '/' do
    @links = Link.all
    erb :index
  end

  post '/' do
    link = Link.new(url: params[:url], title: params[:title])
    params[:tags].split(', ').each do |tag|
      link.tags << Tag.first_or_create(name: tag)
    end
    link.save
    redirect '/'
  end

  get '/add_link' do
    erb :add_link
  end

  get '/tags/:name' do
    tag = Tag.first(name: params[:name])
    @links = tag ? tag.links : []
    erb :index
  end

end
