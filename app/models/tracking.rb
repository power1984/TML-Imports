class Tracking < ActiveRecord::Base
  belongs_to :logistic
  has_many :freight_bills
  validates_presence_of :tracking_number

end
