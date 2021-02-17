FactoryBot.define do
  factory :memo do
    title { 'title' }
    text { Faker::Lorem.sentence }
    association :folder
  end
end
