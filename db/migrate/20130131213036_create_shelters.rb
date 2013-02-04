class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :sheltername
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone

      t.timestamps
    end
  end
end
