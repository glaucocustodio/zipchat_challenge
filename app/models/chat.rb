class Chat < ApplicationRecord
  acts_as_chat

  has_many :messages

  scope :ordered, -> { order(created_at: :desc) }

  class << self
    def sale(params)
      new(params.with_defaults(model_id: DEFAULT_MODEL_ID))
    end

    def find_sale(id)
      chat = find(id)
      chat.tool_enabled!
      chat
    end

    DEFAULT_MODEL_ID = "gpt-4-turbo"
  end

  def tool_enabled!
    with_tools(ProductTool, OrderTool)
  end

  def activate_sales_assistant_mode!
    with_instructions(
      "You are a sales assistant. Your goal is to help the customer finding the best product for their needs."
    )
  end
end
