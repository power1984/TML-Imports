class Shipment < ActiveRecord::Base
  belongs_to :tracking
  belongs_to :customer

  # def tracking_number
  #   tracking.tracking_number
  # end
  delegate :tracking_number, to: :tracking
  delegate :full_name, to: :customer,prefix: true
  delegate :logistic, to: :tracking


end
