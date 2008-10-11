class DailyReport < ActiveRecord::Base
  belongs_to :bogey
  belongs_to :investigator, :class_name => "User", :foreign_key => "user_id"
  validates_presence_of :investigator, :bogey
end
