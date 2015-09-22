class RenameFreightTypeToIsAirFreight < ActiveRecord::Migration
  def change
    rename_column :order_lines, :is_air_freight, :is_air_freight
  end
end
