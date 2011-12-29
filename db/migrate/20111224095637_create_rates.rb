class CreateRates < ActiveRecord::Migration
  def self.up
    create_table :rates do |t|
      t.integer :sID
      t.integer :points
      t.integer :ratings
      t.timestamps
    end
  end

  def self.down
    drop_table :rates
  end
end
