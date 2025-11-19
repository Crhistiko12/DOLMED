class CreateAppointments < ActiveRecord::Migration[8.1]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: { to_table: :users }
      t.references :doctor, null: false, foreign_key: { to_table: :users }
      t.datetime :appointment_date
      t.string :status
      t.text :notes
      t.string :appointment_type

      t.timestamps
    end
  end
end