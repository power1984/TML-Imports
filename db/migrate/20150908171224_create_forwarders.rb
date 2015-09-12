class CreateForwarders < ActiveRecord::Migration
  def change
    create_table :forwarders do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :alias

      t.timestamps null: false
    end
  end
end
