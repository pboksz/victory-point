# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    sequence(:name) { |n| "GameName#{n}" }
    year_published 2012
    minimum_players 2
    maximum_players 4
  end
end
