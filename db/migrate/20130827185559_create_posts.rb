class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :email
      t.string :title
      t.text :content
      t.float :price 
      t.string :url
      t.timestamps

      t.belongs_to :category
    end
  end
end
