class CreateCurriculumTechnicalSkills < ActiveRecord::Migration
  def change
    create_table :curriculum_technical_skills do |t|
      t.string :field
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
