class User < ApplicationRecord
	attr_accessor :email, :name, :password, :password_confirm
    # has_secure_password
end
