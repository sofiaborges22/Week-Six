class User < ApplicationRecord
	validates :email, uniqueness: true, presence: true
	has_many :products
end
#table contains instances of the model
#model -- singular