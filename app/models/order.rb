class Order < ActiveRecord::Base
  #Relations

  has_many :order_lines, :dependent => :destroy
  accepts_nested_attributes_for :order_lines,:reject_if =>lambda {|a| a[:quantity].blank?}, :allow_destroy => true
  belongs_to :customer

  #delegations
  delegate :full_name, to: :customer, prefix: true

  #validations
  validates_presence_of :order_date


end
