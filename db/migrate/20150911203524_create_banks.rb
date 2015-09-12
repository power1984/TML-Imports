class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.integer :account_number , :limit=>8
      t.string :name
      t.string :currency

      t.timestamps null: false
    end
  end
end
