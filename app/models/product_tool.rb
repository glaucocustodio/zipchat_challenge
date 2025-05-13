class ProductTool < RubyLLM::Tool
  description "Return products available for shopping. When the user asks for products, return the products."

  def execute
    products = [
      {
        name: "Lipstick",
        price: 10,
        description: "A lipstick with a matte finish"
      },
      {
        name: "Shoe",
        price: 20,
        description: "A shoe with a leather finish"
      },
      {
        name: "T-shirt",
        price: 30,
        description: "A t-shirt with a cotton finish"
      }
    ]
    products.to_json
  end
end
