class CreateBogeysDailyReports < ActiveRecord::Migration
  def self.up
    create_table :bogeys_daily_reports, :force => true do |t|
      t.integer :bogey_id, :daily_report_id
      t.timestamps
    end
  end

  def self.down
    drop_table :bogeys_daily_reports
  end
end
