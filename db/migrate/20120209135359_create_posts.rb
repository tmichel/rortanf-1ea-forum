class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.references :topic
      t.text :content

      t.timestamps
    end
    add_index :posts, :topic_id
  end
end
