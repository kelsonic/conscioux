class Review < ActiveRecord::Base
  
  # Associations
  belongs_to :user
  belongs_to :product

  # Validations
  validate :image_size
  validates :title, presence: true, length: {maximum: 100}
  validates :body, presence: true, length: {minimum: 50}
  validates :rating, presence: true, numericality: {only_integer: false}
  validates :video, length: {maximum: 500}

  mount_uploader :image, ImageUploader
  
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
