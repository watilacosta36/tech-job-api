class Job < ApplicationRecord
  belongs_to :company
  has_many :job_tags
  has_many :job_requirements
  has_many :job_benefits

  searchkick

  accepts_nested_attributes_for :job_tags, reject_if: ->(attributes) { attributes["tag"].blank? }, allow_destroy: true
  accepts_nested_attributes_for :job_requirements, reject_if: ->(attributes) { attributes["requirement"].blank? },
                                allow_destroy: true
  accepts_nested_attributes_for :job_benefits, reject_if: ->(attributes) { attributes["benefit"].blank? },
                                allow_destroy: true

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
end
