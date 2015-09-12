class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.references :bank, index: true, foreign_key: true
      t.date :date
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
