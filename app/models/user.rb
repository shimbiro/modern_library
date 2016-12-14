class User < ApplicationRecord
  validates :username, length: { maximum: 50 }
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :password_confirm, length: { minimum: 6 }, allow_blank: true
end
