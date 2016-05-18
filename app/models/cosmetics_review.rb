class CosmeticsReview < ActiveRecord::Base
  
  belongs_to :user
  has_many :images, as: :imageable
  
  validates :user_id, presence: true, numericality: {only_integer: true}
  
end
