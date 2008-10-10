class Bogey < ActiveRecord::Base
  validates_presence_of :name, :living_name, :classification, :status
end
