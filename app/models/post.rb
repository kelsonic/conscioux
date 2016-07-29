class Post < ActiveRecord::Base
  
  # Associations
  belongs_to :user

  # Validations
  validate :image_size
  validates :topic, presence: true, length: {maximum: 150}
  validates :city, presence: true, format: {with: /[^0-9!@#$%^&*()]+/, message: 'No special characters'}, length: {maximum: 200}
  validates :country, presence: true, format: {with: /[^0-9!@#$%^&*()]+/, message: 'No special characters'}, length: {maximum: 200}
  validates :title, presence: true, length: {maximum: 150}
  validates :body, presence: true
  validates :takeaways, length: {maximum: 500}
  validates :interviewed_people, length: {maximum: 1000}
  # TODO: video validations

  mount_uploader :image, ImageUploader

  private

    def image_size
      if image.size > 1.megabytes
        errors.add(:image, "Should be less than 1MB")
      end
    end
  
end
