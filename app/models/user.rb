class User < ApplicationRecord
	validates :first_name, :last_name, :address, presence: true
	validates :email, uniqueness: true
end
