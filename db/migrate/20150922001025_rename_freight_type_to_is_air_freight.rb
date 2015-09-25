class RenameFreightTypeToIsAirFreight < ActiveRecord::Migration
  def change
    rename_column :order_lines, :freight_type, :is_air_freight
  end
end
