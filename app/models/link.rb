
require 'data_mapper'

class Link
  include DataMapper::Resource

  has n, :tags, through: Resource # has and belongs to many. resource is what data mapper calls join table

  property :id, Serial
  property :title, String
  property :url, String
end
