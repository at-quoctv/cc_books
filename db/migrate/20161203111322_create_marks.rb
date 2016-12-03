class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.string :mark_type
      t.boolean :is_favorite
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
