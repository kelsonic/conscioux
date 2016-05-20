class CosmeticsReview < ActiveRecord::Base
  
  belongs_to :user
  mount_uploader :image, ImageUploader
  validate :image_size
  
  validates :type_tag, presence: true
  validates :brand, presence: true
  validates :product_name, presence: true
  validates :store, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :gender, presence: true
  validates :cosmetics_review_title, presence: true, length: { in: 4..60 }
  validates :cosmetics_review_body, presence: true, length: { in: 20..2500 }
  validates :price, presence: true
  validates :quantity, presence: true
  
  def self.search(search)
    
    where("product_name LIKE ? OR brand LIKE ? OR specific_type_tag LIKE?", "%#{search}%", "%#{search}%", "%#{search}%")
  
  end
  
  private
  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "Should be less than 1MB")
    end
  end
  
end
