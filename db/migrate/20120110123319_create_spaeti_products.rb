class CreateSpaetiProducts < ActiveRecord::Migration
  def self.up
    create_table :spaeti_products do |t|
      t.integer :spaeti_id
      t.integer :product_id
      t.timestamps
    end
  end

  def self.down
    drop_table :spaeti_products
  end
end
