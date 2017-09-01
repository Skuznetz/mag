class AddUsedColumnToItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :used, :boolean, default: false
  end
end
