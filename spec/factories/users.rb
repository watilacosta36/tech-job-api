FactoryBot.define do
  factory :user do
    firstname { "MyString" }
    lastname { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    profile { 1 }
  end
end
