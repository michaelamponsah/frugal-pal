require 'rails_helper'

RSpec.describe Expense, type: :model do
  user1 = FactoryBot.create(:user)
  expense1 = FactoryBot.create(:expense, user: user1)

  it 'should have an associated user' do
    expect(expense1.user_id).to eq(user1.id)
  end

  it 'should have a title and an expense amount' do
    expect(expense1.name).to include('Pay water bill for December 2022')
    expect(expense1.amount).to eq(85.00)
    expect(expense1.amount).not_to eq(0)
  end
end
