class CreateCurriculumComputerSkills < ActiveRecord::Migration
  def change
    create_table :curriculum_computer_skills do |t|
      t.string :field
      t.text :summary
      t.text :description

      t.timestamps
    end
  end
end
