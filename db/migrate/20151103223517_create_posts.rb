class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :image
      t.string :story
      t.string :saucy
      t.string :cheese

      t.timestamps null: false
    end
  end
end
