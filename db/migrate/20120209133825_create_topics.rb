class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :descritpion

      t.timestamps
    end
  end
end
