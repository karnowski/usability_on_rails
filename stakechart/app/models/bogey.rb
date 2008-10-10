class Bogey < ActiveRecord::Base
  has_and_belongs_to_many :daily_reports
  validates_presence_of :name, :living_name, :classification, :status
end
