class CosmeticsReview < ActiveRecord::Base
  
  belongs_to :user
  validates :user_id, presence: true, numericality: {only_integer: true}
  
end
