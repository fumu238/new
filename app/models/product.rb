class Product < ApplicationRecord
	belongs_to :artist, optional: true
	belongs_to :label, optional: true
	belongs_to :genre, optional: true
	has_many :discs, dependent: :destroy
	has_many :reviews, dependent: :destroy
	has_many :cart_item, dependent: :destroy
	has_many :order_items
	attachment :image
end
