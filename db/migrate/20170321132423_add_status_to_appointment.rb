class AddStatusToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :status, :boolean
  end
end
