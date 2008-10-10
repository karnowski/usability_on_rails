class DailyReport < ActiveRecord::Base
  has_and_belongs_to_many :bogeys
  belongs_to :investigator, :class_name => "User", :foreign_key => "user_id"
  validates_presence_of :investigator
end
