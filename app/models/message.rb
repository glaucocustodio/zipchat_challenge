class Message < ApplicationRecord
  belongs_to :chat

  acts_as_message

  enum :role, %w[user system assistant].index_by(&:to_sym)
end
