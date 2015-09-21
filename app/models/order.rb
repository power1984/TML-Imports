class Order < ActiveRecord::Base
  has_many :order_lines, :dependent => :destroy
  accepts_nested_attributes_for :order_lines,:reject_if =>lambda {|a| a[:quantity].blank?}, :allow_destroy => true
  belongs_to :customer
  delegate :full_name, to: :customer,prefix: true




end
