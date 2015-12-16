class CreatePluginCategories < ActiveRecord::Migration
  def change
    create_table :plugin_categories do |t|
    	t.integer :plugin_id
    	t.integer :category_id
      t.timestamps null: false
    end
  end
end
