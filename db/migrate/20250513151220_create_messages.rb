class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_enum :message_role, %w[user system assistant]

    create_table :messages do |t|
      t.enum :role, enum_type: "message_role", null: false
      t.text :content, null: false
      t.references :chat, null: false, foreign_key: true
      t.string :model_id
      t.integer :input_tokens
      t.integer :output_tokens
      t.timestamps
    end
  end
end
