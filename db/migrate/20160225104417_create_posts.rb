class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :food
      t.string :description
      t.string :note
      t.string :author
      t.binary :picture

      t.timestamps null: false
    end
  end
end
