class Message < ApplicationRecord
  belongs_to :chat_room

  validates :comment, presence: true
end
