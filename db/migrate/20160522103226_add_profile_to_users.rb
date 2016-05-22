class AddProfileToUsers < ActiveRecord::Migration
  
  def change
    
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :description, :string
    add_column :users, :image, :string
    
  end
  
end
