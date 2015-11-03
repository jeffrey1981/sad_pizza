class User < ActiveRecord::Base

  has_secure_password

  validates :email, presence: true, uniqueness: true
  #Validates :username, presence: true, uniqueness: true

end
