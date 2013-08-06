class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password_digest, :username, :password, :password_confirmation

  validates_presence_of :password, :on => :create
  has_many :decks
end
