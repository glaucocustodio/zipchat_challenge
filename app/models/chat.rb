class Chat < ApplicationRecord
  acts_as_chat

  has_many :messages

  def activate_sales_assistant_mode!
    with_instructions(
      "You are a sales assistant. Your goal is to help the customer finding the best product for their needs."
    )
  end
end
