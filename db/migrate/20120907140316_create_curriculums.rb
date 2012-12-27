class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :first_name
      t.string :surname
      t.string :address
      t.string :mobile_phone
      t.string :mobile_phone_prefix
      t.string :email
      t.string :nationality
      t.string :date_of_birth
      t.string :gender

      t.timestamps
    end
  end
end
