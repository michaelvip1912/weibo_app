class User < ActiveRecord::Base
  attr_accessor :name,:presence
  validates :name, presence: true ,length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } ,:uniqueness => true
  before_save { self.email = email.downcase }
  has_secure_password
  validates :password
end
