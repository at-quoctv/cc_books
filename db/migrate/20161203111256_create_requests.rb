class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :book_name
      t.string :author
      t.text :description
      t.string :status, default: "Processing"
      t.integer :user_id

      t.timestamps
    end
  end
end
