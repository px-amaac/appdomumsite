# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :app do
    name "MyString"
    release_date "2013-04-07"
    description "MyText"
    user_id 1
  end
end
