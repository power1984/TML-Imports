class Deposit < ActiveRecord::Base
  belongs_to :bank
  delegate :account_number, to: :bank, prefix: true

  ## validations
  validates_presence_of :date
  validates_presence_of :amount


end
