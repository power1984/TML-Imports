class OrderLine < ActiveRecord::Base
  belongs_to :order



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

end
