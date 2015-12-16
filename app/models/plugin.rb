class Plugin < ActiveRecord::Base

	belongs_to :user
	validates :plugin_name, presence: true

	has_many :plugin_categories
	has_many :categories, through: :plugin_categories
end
