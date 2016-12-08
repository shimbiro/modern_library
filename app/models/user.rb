class User < ApplicationRecord
  validates :username, length: { maximum: 50 }
  # has_secure_password
  validates :email, uniqueness: true
end
