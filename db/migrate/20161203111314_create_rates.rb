class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.integer :number_rates
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
