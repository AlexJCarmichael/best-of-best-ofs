class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :image_ref
      t.string :source_ref
      t.string :list_desc
      t.string :list-title
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
