require 'rails_helper'

RSpec.describe User, type: :model do
  user1 = FactoryBot.create(:user)
  user2 = FactoryBot.create(:user, name: nil)

  FactoryBot.create_list(:expense, 3, user: user1)
  FactoryBot.create_list(:group, 3, user: user1)

  it 'validates the presence of a name' do
    expect(user1.name).to eq('John Doe')
    expect(user2.name).not_to be_truthy
  end

  it 'returns the correct number of user expenses' do
    expect(user1.user_expenses).not_to be_empty
  end

  it 'returns the correct number of categories/groups created by user' do
    expect(user1.expense_categories).not_to be_empty
  end
end
