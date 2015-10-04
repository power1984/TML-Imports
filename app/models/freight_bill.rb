class FreightBill < ActiveRecord::Base
  belongs_to :shipper
  delegate :company_name, to: :shipper,prefix: true
  belongs_to :logistic

  ## Validations

  validates_presence_of :cost
  validates_presence_of :date
  validates_presence_of :invoice_number

  #scopes

  scope :coastal, ->{where( shipper_id: '1')}


  #calculation of sum of the cost

  def FreightBill.totalcost
    FreightBill.coastal.sum("cost")
  end





end
