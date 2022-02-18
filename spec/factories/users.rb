FactoryBot.define do
  factory :user do |f|
    f.id { 1 }
    f.name { Faker::Name.name }
  end

  factory :invalid_user, parent: :user do |f|
    f.name nil
  end
end
