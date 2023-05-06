FactoryBot.define do
  factory :expense do
    association :user

    name { 'Pay water bill for December 2022' }
    amount { 85.00 }
  end
end
