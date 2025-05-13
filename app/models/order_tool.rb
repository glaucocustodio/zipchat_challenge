class OrderTool < RubyLLM::Tool
  description "Place an order for a product. When the user asks for an order, ensure the user has provided the necessary information to place an order."

  param :product
  param :first_name
  param :last_name
  param :address
  param :phone_number
  param :email

  def execute(product:, first_name:, last_name:, address:, phone_number:, email:)
    Order.create!(
      product: product,
      first_name: first_name,
      last_name: last_name,
      address: address,
      phone_number: phone_number,
      email: email
    )

    "Order placed successfully"
  end
end
