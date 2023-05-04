require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end

    it 'is invalid without a name' do
      user = FactoryBot.build(:user, name: nil)
      expect(user).not_to be_valid
    end

    it 'is invalid without an email' do
      user = FactoryBot.build(:user, email: nil)
      expect(user).not_to be_valid
    end

    it 'is invalid without a password' do
      user = FactoryBot.build(:user, password: nil)
      expect(user).not_to be_valid
    end

    it 'is invalid without a password more than six characters' do
      user = FactoryBot.build(:user, password: 'pass')
      expect(user).not_to be_valid
    end
  end

  describe ' #expenses()' do
    it 'returns the correct number of user expenses created' do
      user = FactoryBot.create(:user)
      expenses = FactoryBot.create_list(:expense, 3, user:)
      expect(user.user_expenses.count).to eq(3)
    end
  end

  describe ' #categories()' do
    it 'returns the correct number of categories/groups created by user' do
      user = FactoryBot.create(:user)
      categories = FactoryBot.create_list(:group, 3, user:)
      expect(user.expense_categories.count).to eq(3)
    end
  end
end
