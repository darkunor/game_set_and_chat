class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.references :user
      t.text :description

      t.timestamps
    end
    add_index :topics, :user_id
    
  end
end
