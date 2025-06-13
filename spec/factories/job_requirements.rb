FactoryBot.define do
  factory :job_requirement do
    job { nil }
    requirement { "MyString" }
    is_mandatory { false }
  end
end
