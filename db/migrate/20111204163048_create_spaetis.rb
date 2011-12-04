class CreateSpaetis < ActiveRecord::Migration
  def self.up
    create_table :spaetis do |t|
      t.string :name
      t.string :street
      t.string :number
      t.string :postal
      t.string :city
      t.string :district
      t.string :open
      t.timestamps
    end
  end

  def self.down
    drop_table :spaetis
  end
end
