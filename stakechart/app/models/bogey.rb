class Bogey < ActiveRecord::Base
  has_many :daily_reports
  validates_presence_of :name, :living_name, :classification, :status
end
