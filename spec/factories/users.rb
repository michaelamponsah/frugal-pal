FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    sequence(:email) { |n| "johndoe#{n}@gmail.com"}
    password {'john123'}
  end
end
