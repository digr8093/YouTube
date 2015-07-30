class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :description
      t.decimal :cost
      t.integer :quantity
      t.string :image

      t.timestamps null: false
    end
  end
end
