class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :id_number
      t.string :address
      t.date :date_of_birth
      t.string :phone

      t.timestamps null: false
    end
  end
end
