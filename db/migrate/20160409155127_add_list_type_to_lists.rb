class AddListTypeToLists < ActiveRecord::Migration
  def change
    add_column :lists, :list_type, :string
  end
end
