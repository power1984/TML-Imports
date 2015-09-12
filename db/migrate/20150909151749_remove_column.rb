class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :trackings, :logistic

  end
end
