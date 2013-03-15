# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game_expansion do
    association(:game)
    name "GameExpansion"
    year_published 1996
    minimum_players 3
    maximum_players 5
  end
end
