class User < ApplicationRecord
  has_secure_password

  has_many :messages
  has_many :conversations, through: :messages

  has_many :subscriptions
  has_many :conversations, through: :subscriptions

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
