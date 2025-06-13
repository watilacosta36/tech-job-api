class Job < ApplicationRecord
  belongs_to :company

  searchkick
end
