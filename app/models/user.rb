class User < ActiveRecord::Base
  has_many :posts
  has_secure_password

  validates :email, presence: true, uniqueness: true
  #Validates :username, presence: true, uniqueness: true

end
