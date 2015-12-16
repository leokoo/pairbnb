class Category < ActiveRecord::Base
	has_many :plugin_categories
	has_many :plugins, through: :plugin_categories
end
