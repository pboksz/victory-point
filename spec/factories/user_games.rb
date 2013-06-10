# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_games do
    association(:user)
    association(:games)
  end
end
