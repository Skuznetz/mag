class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text  :description
      t.float :price
      t.float :weight

      t.timestamps
    end
      add_index :items, :name
  end
end
