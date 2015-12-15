class Plugin < ActiveRecord::Base

	belongs_to :user
	validates :plugin_name, presence: true
end
