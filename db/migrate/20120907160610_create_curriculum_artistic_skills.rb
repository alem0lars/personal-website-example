class CreateCurriculumArtisticSkills < ActiveRecord::Migration
  def change
    create_table :curriculum_artistic_skills do |t|
      t.text :description

      t.timestamps
    end
  end
end
