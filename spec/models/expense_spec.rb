require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe "field validations" do
    it "is invalid without a name" do 
      user = FactoryBot.build(:user)
      expense = FactoryBot.build(:expense, name: nil, user: user)
      expect(expense).not_to be_valid
    end

    it "is invalid without an amount" do 
      user = FactoryBot.build(:user)
      expense = FactoryBot.build(:expense, amount: nil, user: user)
      expect(expense).not_to be_valid
    end

    it "is valid with a name, amount and a user" do
      user = FactoryBot.build(:user)
      expense = FactoryBot.build(:expense, user: user)
      expect(expense).to be_valid
    end

    it "has the correct values entered" do 
      user = FactoryBot.build(:user)
      expense = FactoryBot.build(:expense, user: user)
      expect(expense.name).to include('Pay water bill for December 2022')
      expect(expense.amount).to eq(85.00)
    end
  end

  describe "associations" do
    it 'should have an associated user' do
      user = FactoryBot.create(:user)
      expense = FactoryBot.create(:expense, user: user)
      expect(expense.user_id).to eq(user.id)
    end  
  end
end
