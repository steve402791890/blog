class AddPetnameToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :petname, :string
  end
end
