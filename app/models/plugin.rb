class Plugin < ActiveRecord::Base
	validates :plugin_name, presence: true
	belongs_to :user
	has_many :plugin_categories
	has_many :categories, through: :plugin_categories
	accepts_nested_attributes_for :categories, allow_destroy: true
 has_many :post_attachments
 accepts_nested_attributes_for :post_attachments
end
