FactoryGirl.define do
  factory :user do |u|
    u.email Faker::Internet.email
    u.password 'Test1234'
  end
end
