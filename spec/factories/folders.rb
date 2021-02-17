FactoryBot.define do
  factory :folder do
    title { 'title' }
    association :user
  end
end
