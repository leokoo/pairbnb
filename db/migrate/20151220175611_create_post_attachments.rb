class CreatePostAttachments < ActiveRecord::Migration
  def change
    create_table :post_attachments do |t|
    	t.string :image

      t.timestamps null: false
    end
  end
end
