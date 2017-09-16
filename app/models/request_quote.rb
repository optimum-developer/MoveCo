class RequestQuote < ApplicationRecord
	validates :name, presence: true
	validates :date_to_move, presence: true
	validates :move_from, presence: true
	validates :move_to, presence: true
	validates :phone_number, presence: true
	validates :email, presence: true
	
end
