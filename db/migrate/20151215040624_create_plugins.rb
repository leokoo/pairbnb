class CreatePlugins < ActiveRecord::Migration
  def change
    create_table :plugins do |t|
    	t.string :plugin_name
    	t.string :plugin_description
    	t.string :website_address
    	t.string :plugin_feature
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
