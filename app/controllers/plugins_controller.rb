class PluginsController < ApplicationController
	def new
		@plugin = Plugin.new
	end
	
	def create
    @plugin = current_user.plugins.new(plugin_params)
    
     if @plugin.save
     	redirect_to @plugin #show_path -- show.
   	else
    	render :new
    end
  end

	private
	def plugin_params
		params.require(:plugin).permit(:plugin_name, :plugin_description, :website_address, :plugin_feature)
	end

end
