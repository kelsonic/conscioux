class Profile < ActiveRecord::Base

  # Associations
  belongs_to :user

  # Validations
  validate :image_size
  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 100}
  validates :city, presence: true, format: {with: /[^0-9!@#$%^&*()]+/, message: 'No special characters'}, length: {maximum: 200}
  validates :country, presence: true, format: {with: /[^0-9!@#$%^&*()]+/, message: 'No special characters'}, length: {maximum: 200}
  validates :bio, presence: true, length: {maximum: 1000}

  mount_uploader :image, ImageUploader

  private
  
    def image_size
      if image.size > 1.megabytes
        errors.add(:image, "Should be less than 1MB")
      end
    end

end