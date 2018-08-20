class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :conversation_id
      t.integer :user_id

      t.timestamps
    end
  end
end
