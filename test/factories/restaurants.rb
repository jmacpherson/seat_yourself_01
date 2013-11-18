# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    name "MyString"
    address "MyString"
    user_id 1
    latitude 1.5
    longitude 1.5
    neighbourhood "MyString"
  end
end
