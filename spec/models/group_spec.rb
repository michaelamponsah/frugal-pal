require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'field validations' do
    it 'is invalid without a name' do
      user = FactoryBot.build(:user)
      category = FactoryBot.build(:group, name: nil, user:)
      expect(category).not_to be_valid
    end

    it 'is invalid without an icon' do
      user = FactoryBot.build(:user)
      category = FactoryBot.build(:group, icon: nil, user:)
      expect(category).not_to be_valid
    end

    it 'is valid with valid data' do
      user = FactoryBot.build(:user)
      category = FactoryBot.build(:group, user:)
      expect(category).to be_valid
    end

    it 'should have the correct data' do
      user = FactoryBot.build(:user)
      category = FactoryBot.build(:group, user:)
      expect(category.name).to include('Utility Bills')
      expect(category.icon).to include('https://www.icons/1')
    end
  end

  describe 'associations' do
    it 'should have the associated user/author' do
      user = FactoryBot.create(:user)
      category = FactoryBot.create(:group, user:)
      expect(category.user_id).to eq(user.id)
    end
  end
end
