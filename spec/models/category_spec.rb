require 'rails_helper'

RSpec.describe Category, type: :model do
  
  describe 'has many products' do
    it { should have_many(:products) }
  end

  describe 'its name' do
    it do
      should validate_presence_of(:name)
      should validate_uniqueness_of(:name).case_insensitive
    end
  end

end
