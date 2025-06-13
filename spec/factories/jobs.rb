FactoryBot.define do
  factory :job do
    company { nil }
    title { "MyString" }
    description { "MyText" }
    full_description { "MyText" }
    salary_min { 1 }
    salary_max { 1 }
    salary_currency { "MyString" }
    employment_type { 1 }
    experience_level { 1 }
    location { "MyString" }
    is_remote { false }
    is_active { false }
    expires_at { "2025-06-13 01:42:33" }
  end
end
