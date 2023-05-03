FactoryBot.define do
  factory :group do
    association :user

    name { 'Utility Bills' }
    icon { 'https://www.icons/1' }
  end
end
