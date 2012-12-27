class CreateCurriculumDrivingLicenses < ActiveRecord::Migration
  def change
    create_table :curriculum_driving_licenses do |t|
      t.string :type
      t.text :vehicle_categories

      t.timestamps
    end
  end
end
