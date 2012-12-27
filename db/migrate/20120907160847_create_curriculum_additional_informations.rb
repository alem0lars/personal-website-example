class CreateCurriculumAdditionalInformations < ActiveRecord::Migration
  def change
    create_table :curriculum_additional_informations do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
