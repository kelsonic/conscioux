class Product < ActiveRecord::Base

  # Associations
  belongs_to :category
  has_many :reviews

  # Validations
  validates :name, presence: true, length: { maximum: 150 }
  validates :brand, presence: true, length: { maximum: 150 }
  validates :gender, presence: true
  # TODO: validates :website
  validates :price, format: { with: /[^A-Za-z]/ }
  validates :quantity, length: { maximum: 50 }
  validates :image, length: { maximum: 100 }

end