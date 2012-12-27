class CreateCurriculumEducations < ActiveRecord::Migration
  def change
    create_table :curriculum_educations do |t|
      t.string :date
      t.string :title_of_qualification
      t.string :subjects
      t.string :trainer_name
      t.string :classification_level

      t.timestamps
    end
  end
end
