class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.datetime :scheduled_for
      t.string :venue_name
      t.string :venue_address_1
      t.string :venue_address_2
      t.string :venue_city
      t.string :venue_state
      t.string :venue_postal_code
      t.float :price
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end
