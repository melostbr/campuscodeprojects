class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.string :client_name
      t.string :client_email
      t.string :client_phone
      t.text :description

      t.timestamps
    end
  end
end
