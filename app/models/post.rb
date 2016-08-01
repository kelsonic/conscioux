class Post < ActiveRecord::Base
  
  # Associations
  belongs_to :user

  # Validations
  validates :topic, presence: true, length: { maximum: 150 }
  validates :city, presence: true, length: { maximum: 200 }
  validates :country, presence: true, length: { maximum: 200 }
  validates :title, presence: true, length: { maximum: 150 }
  validates :body, presence: true, length: { maximum: 5000 }
  validates :takeaways, length: { maximum: 500 }
  validates :interviewed_people, length: { maximum: 1000 }
  validates :video, length: { maximum: 500 }
  validates :image, length: { maximum: 100 }
  
end
