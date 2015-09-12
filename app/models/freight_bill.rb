class FreightBill < ActiveRecord::Base
  belongs_to :shipper
  delegate :company_name, to: :shipper,prefix: true
  belongs_to :logistic
  validates_presence_of :cost



  scope :coastal, ->{where( shipper_id: '1')}

  def FreightBill.totalcost
    FreightBill.coastal.sum("cost")
  end



  #def shipper_company_name
  #  shipper.company_name
  #end


end
