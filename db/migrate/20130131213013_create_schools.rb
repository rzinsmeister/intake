class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :schoolname
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :officephone
      t.string :sswname
      t.string :sswphone

      t.timestamps
    end
  end
end
