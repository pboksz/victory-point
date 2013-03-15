# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_game_expansion do
    association(:game_expansion)
    association(:user_game)
  end
end
