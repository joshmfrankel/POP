FactoryGirl.define do
  factory :user do |u|
    u.email Faker::Internet.email
    u.password Faker::Internet.password

    trait :admin do
      role 'admin'
    end

    trait :moderator do
      role 'moderator'
    end

    trait :user do
      role 'user'
    end
  end
end
