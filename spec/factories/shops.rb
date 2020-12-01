FactoryBot.define do
  factory :shop do
    name              { 'test' }
    shop_url          { Faker::Internet.url }
    association       :user

    after(:build) do |shop|
      shop.image.attach(io: File.open('app/assets/images/sample.JPG'), filename: 'sample.JPG')
    end
  end
end
