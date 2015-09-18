class Order < ActiveRecord::Base
  belongs_to :customer


  def volumecalc
    if length.nil? || width.nil? || height.nil?
      return 0
    else
      return ((length*width*height)/1728)
    end
  end


  def freightchoice
    if freight_type
      return "Air"
    else
      return "Sea"
    end
  end


end
