require 'rails_helper'

RSpec.describe Contact, type: :model do

  describe 'its name' do
    it do
      should validate_presence_of(:name)
      should validate_length_of(:name).is_at_most(100)
    end
  end

  describe 'its email' do
    it do
      should validate_presence_of(:email)
      should allow_value('me@example.com').for(:email)
      should_not allow_value('meexample.com').for(:email)
    end
  end

  describe 'its comments' do
    it do
      should validate_presence_of(:comments)
      should validate_length_of(:comments).is_at_most(5000)
    end
  end

end
