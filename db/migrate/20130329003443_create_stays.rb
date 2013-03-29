class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.integer :entrant_id
      t.integer :shelter_id

      t.timestamps
    end
  end
end
