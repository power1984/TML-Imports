class OrderLine < ActiveRecord::Base
  belongs_to :order
  has_one :order_status, :dependent => :destroy
  accepts_nested_attributes_for :order_status



  def volume_calc
    if length.nil? || width.nil? || height.nil?
      return 0
    else
      return ((length*width*height)/1728).round(2)
    end
  end

  def down_payment_percentage

    return ((down_payment/tml_price)*100)

  end




  def freight_choice
    if is_air_freight
      return "Air"
    else
      return "Sea"
    end
  end



  delegate :customer_full_name, to: :order ,prefix: false
  delegate :order_date, to: :order ,prefix: false
  delegate :ordered_date, to: :order_status, prefix: false, allow_nil: true
  delegate :arrived_mia, to: :order_status, prefix: false, allow_nil: true
  delegate :arrived_sme, to: :order_status, prefix: false, allow_nil: true
end
