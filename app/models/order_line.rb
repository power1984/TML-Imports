class OrderLine < ActiveRecord::Base

  #relations
  belongs_to :order


#validations
  validates_presence_of :date
  validates_presence_of :product_name
  validates_presence_of :product_description
  validates_presence_of :url
  validates_presence_of :size_color
  validates_presence_of :quantity
  validates_presence_of :online_price
  validates_presence_of :tml_price


#calculations
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


#delegations
  delegate :customer_full_name, to: :order, prefix: false
  delegate :order_date, to: :order, prefix: false

end
