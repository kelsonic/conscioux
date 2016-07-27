class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id

      t.string :name
      t.string :store
      t.string :city
      t.string :country
      t.string :gender
      t.string :website
      t.string :image
      t.string :price
      t.string :quantity

      t.timestamps null: false
    end
  end
end
