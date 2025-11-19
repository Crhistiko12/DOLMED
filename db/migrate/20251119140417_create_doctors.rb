class CreateDoctors < ActiveRecord::Migration[8.1]
  def change
    create_table :doctors do |t|
      t.references :user, null: false, foreign_key: true
      t.references :speciality, null: false, foreign_key: true
      t.string :license_number
      t.integer :experience

      t.timestamps
    end
  end
end
