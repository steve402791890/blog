class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :petname
      t.string :owner
      t.string :petwalker
      t.date :appdate
      t.integer :applength
    end
  end
end
