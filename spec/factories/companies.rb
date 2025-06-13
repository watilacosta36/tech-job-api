FactoryBot.define do
  factory :company do
    name { "MyString" }
    description { "MyText" }
    logo_url { "MyString" }
    website { "MyString" }
    industry { "MyString" }
    size { 1 }
    location { "MyString" }
  end
end
