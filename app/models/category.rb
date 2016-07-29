class Category < ActiveRecord::Base
  
  # Associations
  has_many :products

  # Validations
  validates :name, presence: true, uniqueness: {case_sensitive: false}

end