class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :pnamef
      t.string :pnamel
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.date :entrydate
      t.date :exitdate

      t.timestamps
    end
  end
end
