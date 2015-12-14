class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
    		t.string :provider
    		t.string :uid
    		t.string :token
    		t.integer :user_id
    end
  end
end