class Employee < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :id_number
  validates_presence_of :date_of_birth
  validates_presence_of :phone



#  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :on => [:create, :update]

end
