class CreateSpaetiFeatures < ActiveRecord::Migration
  def self.up
    create_table :spaeti_features do |t|
      t.integer :spaeti_id
      t.integer :feature_id
      t.timestamps
    end
  end

  def self.down
    drop_table :spaeti_features
  end
end
