class CreateCurriculumWorkExperiences < ActiveRecord::Migration
  def change
    create_table :curriculum_work_experiences do |t|
      t.string :date
      t.string :position
      t.string :activities
      t.string :employer_name
      t.string :type_of_business

      t.timestamps
    end
  end
end
