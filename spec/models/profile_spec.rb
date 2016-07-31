require 'rails_helper'

RSpec.describe Profile, type: :model do
  
  describe 'its associations' do
    it { should belong_to(:user) }
  end

  describe 'its first_name' do
    it do
      should validate_presence_of(:first_name)
      should validate_length_of(:first_name).is_at_most(50)
    end
  end

  describe 'its last_name' do
    it do
      should validate_presence_of(:last_name)
      should validate_length_of(:last_name).is_at_most(100)
    end
  end

  describe 'its city' do
    it do
      should validate_presence_of(:city)
      should validate_length_of(:city).is_at_most(200)
    end
  end

  describe 'its country' do
    it do
      should validate_presence_of(:country)
      should validate_length_of(:country).is_at_most(200)
    end
  end

  describe 'its bio' do
    it do
      should validate_presence_of(:bio)
      should validate_length_of(:bio).is_at_most(500)
    end
  end

  describe 'its image' do
    it do
      should validate_length_of(:image).is_at_most(100)
    end
  end

end
