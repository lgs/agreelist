require 'faker'

FactoryGirl.define do
  factory :statement do
    content { Faker::Lorem.sentence }
  end

  factory :individual do
    name { Faker::Name.name }
  end

  factory :agreement do
    url { Faker::Internet.url }
    statement
    individual
  end
end