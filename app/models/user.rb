class User < ActiveRecord::Base
	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true, length: {maximum: 255} # length is 255 b/c of db limitations
end
