class Order < ActiveRecord::Base
  has_many :order_lines, :dependent => :destroy
  accepts_nested_attributes_for :order_lines,:reject_if =>lambda {|a| a[:quantity].blank?}, :allow_destroy => true
  belongs_to :customer
  delegate :full_name, to: :customer,prefix: true

  def volumecalc
    if length.nil? || width.nil? || height.nil?
      return 0
    else
      return ((length*width*height)/1728).round(2)
    end
  end

def down_payment_percentage

  return ((down_payment/tml_price)*100)

  end




  def freightchoice
    if freight_type
      return "Air"
    else
      return "Sea"
    end
  end


end
