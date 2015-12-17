class Plugin < ActiveRecord::Base

	belongs_to :user
	validates :plugin_name, presence: true

	has_many :plugin_categories
	has_many :categories, through: :plugin_categories
	accepts_nested_attributes_for :categories, allow_destroy: true
end
