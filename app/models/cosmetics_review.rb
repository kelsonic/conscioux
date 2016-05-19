class CosmeticsReview < ActiveRecord::Base
  
  belongs_to :user
  mount_uploader :image, ImageUploader
  validate :image_size
  
  def self.search(search)
    where('product_name || brand LIKE ?', "%#{search}%")
  end
  
  private
  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "Should be less than 1MB")
    end
  end
  
end
