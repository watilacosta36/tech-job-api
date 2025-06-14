class JobSerializer < Panko::Serializer
  attributes :id,
    :company_id,
    :title,
    :description,
    :full_description,
    :salary_min,
    :salary_max,
    :salary_currency,
    :employment_type,
    :experience_level,
    :location,
    :is_remote,
    :is_active,
    :expires_at,
    :created_at

    has_many :job_tags, serializer: JobTagSerializer
    has_many :job_requirements, serializer: JobRequirementSerializer
    has_many :job_benefits, serializer: JobBenefitSerializer

    def created_at
      object.created_at.strftime("%d/%m/%Y")
    end
end