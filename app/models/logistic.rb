class Logistic < ActiveRecord::Base
  #RELATIONSHIP

  has_many :trackings

  #VALIDATIONS
  validates_presence_of :logistic

end
