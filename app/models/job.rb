class Job < ApplicationRecord
  belongs_to :company

  enum :employment_type, {
    CLT: 0,
    PJ: 1,
    freelance: 2,
    internship: 3
  }

  enum :experience_level, {
    junior: 0,
    mid: 1,
    senior: 2,
    specialist: 3
  }

  searchkick
end
