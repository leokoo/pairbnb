class AddImagesToPlugins < ActiveRecord::Migration
  def change
    add_column :plugins, :images, :json
  end
end
