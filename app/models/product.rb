class Product < ActiveRecord::Base

  # Associations
  belongs_to :category
  has_many :reviews

  # Validations
  validate :image_size
  validates :name, presence: true, length: { maximum: 150 }
  validates :brand, presence: true, length: { maximum: 150 }
  validates :gender, presence: true
  # TODO: validates :website
  validates :price, format: { with: /[^A-Za-z]/ }
  validates :quantity, length: { maximum: 50 }

  mount_uploader :image, ImageUploader

  private

    def image_size
      if image.size > 1.megabytes
        errors.add(:image, "Should be less than 1MB")
      end
    end

end