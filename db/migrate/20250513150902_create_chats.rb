class CreateChats < ActiveRecord::Migration[8.0]
  def change
    create_table :chats do |t|
      t.string :model_id
      t.string :name, null: false
      t.timestamps
    end
  end
end
