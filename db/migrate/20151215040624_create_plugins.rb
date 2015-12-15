class CreatePlugins < ActiveRecord::Migration
  def change
    create_table :plugins do |t|
    	t.string :name
    	t.string :plugin_type
    	t.integer :plugin_price
    	t.string :plugin_description
    end
  end
end
