class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :branch_id
      t.string :branch_name
      t.string :address
      t.string :postal_code
      t.string :phone
      t.string :free_wifi
      t.string :monday_open
      t.string :monday_close
      t.string :tuesday_open
      t.string :tuesday_close
      t.string :wednesday_open
      t.string :wednesday_close
      t.string :thursday_open
      t.string :thursday_close
      t.string :friday_open
      t.string :friday_close
      t.string :saturday_open
      t.string :saturday_close
      t.string :sunday_open
      t.string :sunday_close
      t.decimal :latitude, :precision=>10, :scale=>6
      t.decimal :longitude, :precision=>10, :scale=>6

      t.string :coordinates

      t.timestamps
    end
  end
end
