require 'rails_helper'

RSpec.describe Review, type: :model do
  
  describe 'its associations' do
    it { should belong_to(:user) }
    it { should belong_to(:product) }
  end

  describe 'its title' do
    it do
      should validate_presence_of(:title)
      should validate_length_of(:title).is_at_most(100)
    end
  end

  describe 'its body' do
    it do
      should validate_presence_of(:body)
      should validate_length_of(:body).is_at_most(5000)
    end
  end

  describe 'its rating' do
    it do
      should validate_presence_of(:rating)
      should validate_numericality_of(:rating).only_integer
    end
  end

  describe 'its video' do
    it do
      should validate_length_of(:video).is_at_most(500)
    end
  end

  describe 'its image' do
    it do
      should validate_length_of(:image).is_at_most(100)
    end
  end

end
