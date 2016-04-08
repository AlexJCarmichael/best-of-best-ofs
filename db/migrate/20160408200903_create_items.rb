class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :one, null:false
      t.string :two, null:false
      t.string :three, null:false
      t.string :four, null:false
      t.string :five, null:false
      t.string :six, null:false
      t.string :seven, null:false
      t.string :eight, null:false
      t.string :nine, null:false
      t.string :ten, null:false
      t.belongs_to :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
