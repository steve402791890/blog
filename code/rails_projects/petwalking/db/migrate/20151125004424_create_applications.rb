class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :owner
      t.string :petwalker
      t.date :appdate
      t.integer :applength
    end
  end
end
