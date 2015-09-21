class OrderLine < ActiveRecord::Base
  belongs_to :order
  has_one :order_status
  delegate :customer_full_name, to: :order ,prefix: false
  delegate :order_date, to: :order ,prefix: false
end
