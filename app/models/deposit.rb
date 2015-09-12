class Deposit < ActiveRecord::Base
  belongs_to :bank
  delegate :account_number, to: :bank, prefix: true

end
