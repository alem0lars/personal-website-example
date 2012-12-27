class CreateCurriculumSocialSkills < ActiveRecord::Migration
  def change
    create_table :curriculum_social_skills do |t|
      t.string :name
      t.text :description
      t.string :acquisition

      t.timestamps
    end
  end
end
