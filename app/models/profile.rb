class Profile < ActiveRecord::Base

  # Associations
  belongs_to :user

  # Validations
  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 100}
  validates :city, presence: true, length: { maximum: 200 }
  validates :country, presence: true, length: { maximum: 200 }
  validates :bio, presence: true, length: {maximum: 500}
  validates :image, length: { maximum: 100 }

end