require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/database_play")

class Link
  include DataMapper::Resource
  property :id, Serial
  property :name, String
end

link1 = Link.create(name: "test")
p link1
