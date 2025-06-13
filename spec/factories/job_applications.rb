FactoryBot.define do
  factory :job_application do
    job { nil }
    candidate_name { "MyString" }
    candidate_email { "MyString" }
    candidate_phone { "MyString" }
    resume_url { "MyString" }
    cover_letter { "MyText" }
    status { 1 }
    applied_at { "MyString" }
  end
end
