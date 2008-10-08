class CreateDailyReports < ActiveRecord::Migration
  def self.up
    create_table :daily_reports do |t|
      t.date :report_date
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :daily_reports
  end
end
