class PluginCategory < ActiveRecord::Base
	belongs_to :plugin
	belongs_to :category
end
