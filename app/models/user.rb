class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	validates :name, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255}, # length is 255 b/c of db limitations
									  format: {with: VALID_EMAIL_REGEX},
									  uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, presence: true, length: {minimum: 6}
end
