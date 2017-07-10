class User < ApplicationRecord

	has_many :posts
	validates :name,presence: true
	validates :email, presence: true

	has_secure_password
	validates :password,presence: true

end
