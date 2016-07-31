require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'its associations' do
    it { should have_one(:profile) }
    it { should have_many(:posts) }
    it { should have_many(:reviews) }
  end

  describe 'its email' do
    it do
      should validate_presence_of(:email)
    end
  end

end
