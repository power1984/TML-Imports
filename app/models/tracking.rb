class Tracking < ActiveRecord::Base
  belongs_to :logistic
  has_many :freight_bills
  validates_presence_of :tracking_number
  validates_presence_of :logistic

  belongs_to :user

  def Tracking.search(query)
    where(" tracking_number LIKE ? ", "%#{query}%")
  end

  def logistic_track
    case logistic.logistic
      when "UPS"
        "http://wwwapps.ups.com/WebTracking/track?track=yes&trackNums=#{tracking_number}"
      when "DHL"
        "http://track.dhl-usa.com/TrackByNbr.asp?ShipmentNumber=#{tracking_number}"
      when "USPS"
        "https://tools.usps.com/go/TrackConfirmAction_input?qtc_tLabels1=#{tracking_number}"
      when "FEDEX"
        "http://www.fedex.com/Tracking?action=track&tracknumbers=#{tracking_number}"
      when "Lasership"
        "http://www.lasership.com/track.php?track_number_input=#{tracking_number}"



      else
        "http://www.google.com"
          end
  end


end
