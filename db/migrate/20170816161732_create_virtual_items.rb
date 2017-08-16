class CreateVirtualItems < ActiveRecord::Migration[5.0]
  def change
    create_table :virtual_items do |t|

      t.timestamps
    end
  end
end
