class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.integer :code
      t.string :name
      t.string :serial_number
      t.string :supplier
      t.string :category
      t.decimal :value
      t.string :status

      t.timestamps
    end
  end
end
