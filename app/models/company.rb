class Company < ApplicationRecord
  has_many :jobs

  enum :size, {
    startup: 0,
    small: 1,
    medium: 2,
    large: 3
  }
end
