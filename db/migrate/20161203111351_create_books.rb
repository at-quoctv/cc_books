class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.date :publish_date
      t.string :author
      t.integer :number_of_pages
      t.string :image
      t.integer :category_id
      t.float :avg_rate
      
      t.timestamps
    end
  end
end
