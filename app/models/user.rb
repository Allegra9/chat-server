class User < ApplicationRecord
  has_secure_password

  has_many :messages
  has_many :conversations, through: :messages

  has_many :subscriptions 
  has_many :conversations, through: :subscriptions
end
