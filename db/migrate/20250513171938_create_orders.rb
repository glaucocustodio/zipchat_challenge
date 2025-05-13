class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.string :product
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
