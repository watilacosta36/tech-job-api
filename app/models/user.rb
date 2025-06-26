class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :email, email_format: true
  validates :firstname, :lastname, length: { in: 2..100 }
  validates :password, presence: true, length: { minimum: 8 }

  enum :profile, {
    admin: 0
  }
end
