class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates :text, presence: true
  #length ? 
end
