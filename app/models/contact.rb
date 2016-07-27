class Contact < ActiveRecord::Base 
  validates :name, presence: true, format: {with: /[A-Za-z ]+/}
  validates :email, presence: true, format: {with: //}
  validates :comments, presence: true, length: {maximum: 5000}
end