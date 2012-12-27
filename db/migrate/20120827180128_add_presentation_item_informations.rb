class AddPresentationItemInformations < ActiveRecord::Migration
  def up
    change_table :presentation_items do |t|
      t.string :name, :null => false
    end
  end

  def down
    remove_column :presentation_items, :name
  end
end
