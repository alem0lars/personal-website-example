class CreatePresentationItems < ActiveRecord::Migration
  def change
    create_table :presentation_items do |t|

      t.timestamps
    end
  end
end
