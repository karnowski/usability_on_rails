class CreateBogeys < ActiveRecord::Migration
  def self.up
    create_table :bogeys do |t|
      t.string :name
      t.string :living_name
      t.string :classification
      t.string :status
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :bogeys
  end
end
