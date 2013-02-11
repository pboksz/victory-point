# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game_play do
    association(:user_game)
    number_of_players 1
  end
end
