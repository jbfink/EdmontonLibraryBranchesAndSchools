class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :school_number
      t.string :school_name
      t.string :address
      t.string :postal_code
      t.string :ward
      t.string :website
      t.string :phone
      t.string :fax
      t.string :email
      t.string :grade_level
      t.string :grades_offered
      t.string :programs
      t.decimal :latitude, :precision=>10, :scale=>6
      t.decimal :longitude, :precision=>10, :scale=>6
      t.string :coordinates
      t.string :school_type

      t.timestamps
    end
  end
end
