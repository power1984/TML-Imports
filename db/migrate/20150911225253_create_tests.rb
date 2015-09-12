class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :help
      t.string :me
      t.string :fak

      t.timestamps null: false
    end
  end
end
