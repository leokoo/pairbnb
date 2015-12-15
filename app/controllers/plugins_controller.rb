class PluginsController < ApplicationController
	def new
		@plugin = Plugin.new
	end
end
