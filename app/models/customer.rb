class Customer < ActiveRecord::Base
  has_many :trackings
  #require 'spreadsheet'


  validates_presence_of :last_name
  validates_presence_of :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :on => [:create, :update]

  def full_name
    #last_name+" "+first_name
    "#{last_name} #{first_name}"
  end
  #searchkick this model
  # searchkick


  # With gem 'scoped_search'
  # scoped_search on: [:first_name, :last_name]

  # simple search form
  def Customer.search(query)
    where("first_name || last_name || alias || address || email || telephone LIKE ?", "%#{query}%")
  end

  #scopes
  #scope :forwarder, -> { where is_forwarder: true }
  #scope :location, -> (location_id) { where location_id: location_id }
  #scope :start, -> (name) { where("fist_name LIKE ?", "#{name}%") }
  # scope :f_lname, lambda { |l | where("last_name LIKE ?", l) }



end
