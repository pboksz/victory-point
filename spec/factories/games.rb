# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    sequence(:name) { |n| "GameName#{n}" }
    year_published 2012
  end
end
