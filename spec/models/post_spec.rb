require 'rails_helper'

RSpec.describe Post, type: :model do
  
  describe 'its associations' do
    it { should belong_to(:user) }
  end

  describe 'its topic' do
    it do
      should validate_presence_of(:topic)
      should validate_length_of(:topic).is_at_most(150)
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

  describe 'its title' do
    it do
      should validate_presence_of(:title)
      should validate_length_of(:title).is_at_most(150)
    end
  end

  describe 'its body' do
    it do
      should validate_presence_of(:body)
      should validate_length_of(:body).is_at_most(5000)
    end
  end

  describe 'its takeaways' do
    it do
      should validate_presence_of(:takeaways)
      should validate_length_of(:takeaways).is_at_most(300)
    end
  end

  describe 'its interviewed_people' do
    it do
      should validate_length_of(:interviewed_people).is_at_most(1000)
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
