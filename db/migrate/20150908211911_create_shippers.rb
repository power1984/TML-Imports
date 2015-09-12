class CreateShippers < ActiveRecord::Migration
  def change
    create_table :shippers do |t|
      t.string :company_name

      t.timestamps null: false
    end
  end
end
