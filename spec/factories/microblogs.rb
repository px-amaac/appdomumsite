# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :microblog do
    header "MyString"
    content "MyString"
    user_id 1
  end
end
