class User < ActiveRecord::Base
  
  # Associations
  has_many :reviews
  has_many :posts
  has_one :profile

  # Validations  
  validate :image_size
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: /@/}
  has_secure_password
  # TODO: admin validation

  mount_uploader :image, ImageUploader
  
  private
    def image_size
      if image.size > 1.megabytes
        errors.add(:image, "Should be less than 1MB")
      end
    end
  
end
