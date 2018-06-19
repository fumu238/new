class Order < ApplicationRecord

	belongs_to :user
	belongs_to :payment
	belongs_to :status
	belongs_to :sub_address

	has_many :order_items
end
