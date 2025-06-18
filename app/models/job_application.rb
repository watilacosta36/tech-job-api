class JobApplication < ApplicationRecord
  belongs_to :job

  has_one_attached :resume

  validates :candidate_name,
            :candidate_email,
            :candidate_phone,
            :resume, presence: true

  validates :candidate_email, email_format: true
  validates :candidate_phone, phone_format: true

  enum :status, {
    pending: 0,
    reviewing: 1,
    interview: 2,
    rejected: 3,
    hired: 4
  }
end
