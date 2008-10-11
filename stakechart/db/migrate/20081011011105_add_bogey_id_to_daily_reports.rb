class AddBogeyIdToDailyReports < ActiveRecord::Migration
  def self.up
    add_column :daily_reports, :bogey_id, :integer
  end

  def self.down
    remove_column :daily_reports, :bogey_id
  end
end
