class AddDescriptionToAppointments < ActiveRecord::Migration
  def change
    add_colum :appointments, :petname, :string
    add_colum :appointments, :owner, :string
    add_colum :appointments, :create_at, :datetime
    add_colum :appointments, :update_at, :datetime

  end
end
