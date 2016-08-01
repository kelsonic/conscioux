class Product < ActiveRecord::Base

  # Associations
  belongs_to :category
  has_many :reviews

  # Validations
  validates :name, presence: true, length: { maximum: 150 }
  validates :brand, presence: true, length: { maximum: 150 }
  validates :gender, presence: true, length: { maximum: 50 }
  validates :website, presence: true, length: { maximum: 500 } 
  validates :price, presence: true, format: { with: /^\d+(\.\d+)*$/, multiline: true, message: 'Only numbers and decimals' }
  validates :quantity, presence: true, length: { maximum: 50 }
  validates :image, length: { maximum: 100 }

end