
  require 'data_mapper'

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String
end
