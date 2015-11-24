class Appointment < ActiveRecord::Migration
  def change
    cteate_table :appointment do |t|
      t.string :petname
      t.sting :owner
      t.string :petwalker
      t.apptdate :date
      t.applength :integer
  end
end
