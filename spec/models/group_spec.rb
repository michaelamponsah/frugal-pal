require 'rails_helper'

RSpec.describe Group, type: :model do
  user1 = FactoryBot.create(:user)
  category1 = FactoryBot.create(:group, user: user1)

  it 'should include an author' do
    expect(category1.user_id).to eq(user1.id)
  end

  it 'should have a title' do
    expect(category1.name).to include('Utility Bills')
  end

  it 'should have an icon' do
    expect(category1.icon).to include('https://www.icons/1')
  end
end
