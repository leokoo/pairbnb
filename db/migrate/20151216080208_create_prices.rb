class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
    	t.integer :price
    	t.integer :subscription_period
    	t.integer :plugin_id
      t.timestamps null: false
    end
  end
end
