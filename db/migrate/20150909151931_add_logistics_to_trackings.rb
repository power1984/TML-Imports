class AddLogisticsToTrackings < ActiveRecord::Migration
  def change
    add_reference :trackings, :logistic, index: true, foreign_key: true
  end
end
