FactoryBot.define do
  factory :diary do
    day {"1"}
    weight {"60.00"}
    breakfast_image {Faker::Lorem.sentence}
    lunch_image {Faker::Lorem.sentence}
    dinner_image {Faker::Lorem.sentence}
    snack_image {Faker::Lorem.sentence}
    exercise {Faker::Lorem.sentence}
    comment {Faker::Lorem.sentence}
    association :user 
  end
end
