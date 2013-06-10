# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game_play do
    association(:user_games)
    number_of_players 1
    played_at Time.now
  end
end
