class CreateCurriculumKnownLanguages < ActiveRecord::Migration
  def change
    create_table :curriculum_known_languages do |t|
      t.integer :listening_understanding
      t.integer :reading_understanding
      t.integer :speaking_interaction
      t.integer :spoken_production
      t.integer :writing

      t.timestamps
    end
  end
end
