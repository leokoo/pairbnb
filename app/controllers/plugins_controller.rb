class PluginsController < ApplicationController
  before_action :set_plugin, only: [:show, :edit, :update, :destroy]
	def index
		@plugins = Plugin.all
		@plugin = Plugin.new
	end
	
	def new
		@plugin = Plugin.new
		@plugin.categories.build
	end

	def create
    @plugin = current_user.plugins.new(plugin_params)
    # @plugin.categories.new(params[:plugin][:categories_attributes][:"0"][:name])
		if params[:plugin][:categories_attributes][:"0"]
	    params[:plugin][:categories_attributes][:"0"][:name].downcase.scan(/\w+/).each do |x|
	    	@plugin.categories.new(name: x)
	    end
	  end

    if params[:plugin][:categories_attributes][:"1"]
    	# byebug
	    params[:plugin][:categories_attributes][:"1"][:name].each do |x|
	    	if Category.where(name: x).count > 0
	    		Category.where(name: x)
	    	else
	    		@plugin.categories.new(name: x)
	    end
	  end
   
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
 	end

	private
	def plugin_params
		# params.require(:plugin).permit(:plugin_name, :plugin_description, :website_address, :plugin_feature, categories_attributes: [:name, :description, :_destroy])
		params.require(:plugin).permit(:plugin_name, :plugin_description, :website_address, :plugin_feature, categories_attributes: [])
	end

	def set_plugin
		@plugin = Plugin.find(params[:id])
	end
end
