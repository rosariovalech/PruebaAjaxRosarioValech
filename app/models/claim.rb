class Claim < ApplicationRecord
	belongs_to :users
	belongs_to :companies
end
