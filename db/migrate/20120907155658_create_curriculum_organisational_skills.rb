class CreateCurriculumOrganisationalSkills < ActiveRecord::Migration
  def change
    create_table :curriculum_organisational_skills do |t|
      t.text :summary
      t.string :acquisition

      t.timestamps
    end
  end
end
