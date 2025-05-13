class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :tool_call, optional: true

  acts_as_message

  enum :role, %w[user system assistant tool].index_by(&:to_sym)

  def user_friendly?
    content.present? && (user? || assistant?)
  end
end
