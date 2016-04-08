class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :image_ref, null:false
      t.string :source_ref, null:false
      t.string :list_desc, null:false
      t.string :list_title, null:false
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
