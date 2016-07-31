class Contact < ActiveRecord::Base 
  
  # Validations
  validates :name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, format: { with: /@/ }
  validates :comments, presence: true, length: { maximum: 5000 }
  
end