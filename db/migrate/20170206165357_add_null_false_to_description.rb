class AddNullFalseToDescription < ActiveRecord::Migration[5.0]
  def change
    change_column :resources, :description, :text, null: false
  end
end
