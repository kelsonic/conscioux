class Profile < ActiveRecord::Base

  # Associations
  belongs_to :user

  # Validations
  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 100}
  validates :city, presence: true, format: {with: /[^0-9!@#$%^&*()]+/, message: 'No special characters'}, length: {maximum: 200}
  validates :country, presence: true, format: {with: /[^0-9!@#$%^&*()]+/, message: 'No special characters'}, length: {maximum: 200}
  validates :bio, presence: true, length: {maximum: 1000}
  validates :image, length: { maximum: 100 }

end