class ChangeFrameworkToTech < ActiveRecord::Migration[5.0]
  def change
    rename_column :resources, :framework, :tech
  end
end
