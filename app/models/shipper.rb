class Shipper < ActiveRecord::Base
  validates_presence_of :company_name


  has_many :freight_bills
  scope :coastal, ->{where( company_name: 'Coastal')}
end
