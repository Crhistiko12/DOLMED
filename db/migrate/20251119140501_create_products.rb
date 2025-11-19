class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock
      t.references :category, null: false, foreign_key: true
      t.string :image
      t.text :composition
      t.text :indications
      t.text :contraindications

      t.timestamps
    end
  end
end
