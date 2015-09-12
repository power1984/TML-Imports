class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.string :tracking_number
      t.string :logistic

      t.timestamps null: false
    end
  end
end
