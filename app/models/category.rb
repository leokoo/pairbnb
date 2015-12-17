class Category < ActiveRecord::Base

	validates :name, 
		presence: true,
		uniqueness: true
	has_many :plugin_categories
	has_many :plugins, through: :plugin_categories
	accepts_nested_attributes_for :plugins, allow_destroy: true
end
