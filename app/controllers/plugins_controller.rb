class PluginsController < ApplicationController
  before_action :set_plugin, only: [:show, :edit, :update, :destroy]
	def index
		@plugins = Plugin.all
		@plugin = Plugin.new
	end
	
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

  def show
  end

 	def edit
 	end

 	def update
 		if @plugin.update(plugin_params)
 			redirect_to @plugin
 		else
 			render :edit
 		end
 	end

 	def destroy
 		@plugin.destroy

 		redirect_to plugins_path

	private
	def plugin_params
		params.require(:plugin).permit(:plugin_name, :plugin_description, :website_address, :plugin_feature)
	end

	def set_plugin
		@plugin = Plugin.find(params[:id])
	end

end
