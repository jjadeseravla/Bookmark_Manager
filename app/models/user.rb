require 'bcrypt'
require 'data_mapper'

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :password_digest, text

  def password=(password)
    self.password_digest = Bcrypt::Password.create(password)
  end
end
