class OrderStatus < ActiveRecord::Base
  belongs_to :order_line
end
