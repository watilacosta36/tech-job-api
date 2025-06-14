class JobRequirementSerializer < Panko::Serializer
  attributes :id , :requirement, :is_mandatory
end