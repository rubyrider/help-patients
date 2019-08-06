class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :full_name
      t.text :address
      t.decimal :lat, precision: 8, scale: 2
      t.decimal :lng, precision: 8, scale: 2
      t.integer :phone
      t.string :gender
      t.string :date_of_birth

      t.timestamps
    end
  end
end
