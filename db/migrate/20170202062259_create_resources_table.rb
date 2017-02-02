class CreateResourcesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.string :language
      t.string :framework
      t.boolean :free
      t.text :description

      t.timestamps
    end

    add_index :resources, :language
  end
end
