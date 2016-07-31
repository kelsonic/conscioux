class Review < ActiveRecord::Base
  
  # Associations
  belongs_to :user
  belongs_to :product

  # Validations
  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 5000 }
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :video, length: { maximum: 500 }
  validates :image, length: { maximum: 100 }
  
end
