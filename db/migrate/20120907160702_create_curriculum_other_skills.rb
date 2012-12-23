class CreateCurriculumOtherSkills < ActiveRecord::Migration
  def change
    create_table :curriculum_other_skills do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
