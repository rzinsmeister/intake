class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.string :cnamef
      t.string :cnamel
      t.integer :contactid
      t.date :dob
      t.string :grade
      t.integer :shelterid
      t.string :mnres
      t.date :entrydate
      t.date :exitdate
      t.integer :totaldays
      t.integer :lastschool
      t.integer :shelterschool
      t.integer :mpsschool
      t.integer :nonmpsschool
      t.text :note

      t.timestamps
    end
  end
end
