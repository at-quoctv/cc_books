class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :action_type
      t.integer :action_id
      t.integer :user_id

      t.timestamps
    end
  end
end