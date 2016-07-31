require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'its associations' do
    it { should have_many(:reviews) }
    it { should belong_to(:category) }
  end

  describe 'its name' do
    it do
      should validate_presence_of(:name)
      should validate_length_of(:name).is_at_most(150)
    end
  end

  describe 'its brand' do
    it do
      should validate_presence_of(:brand)
      should validate_length_of(:brand).is_at_most(150)
    end
  end

  describe 'its gender' do
    it do
      should validate_presence_of(:gender)
      should validate_length_of(:gender).is_at_most(50)
    end
  end

  describe 'its website' do
    it do
      should validate_presence_of(:website)
      should validate_length_of(:website).is_at_most(500)
    end
  end

  describe 'its price' do
    it do
      should validate_presence_of(:price)
      should allow_value('5.234').for(:price)
      should_not allow_value('5four321').for(:price).
        with_message('Only numbers and decimals')
    end
  end

  describe 'its quantity' do
    it do
      should validate_presence_of(:quantity)
      should validate_length_of(:quantity).is_at_most(50)
    end
  end

  describe 'its image' do
    it do
      should validate_length_of(:image).is_at_most(100)
    end
  end

end
