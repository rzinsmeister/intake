class AddColumnStays < ActiveRecord::Migration
  def change
  	
  
  	add_column :stays, :entrydate, :date
  	add_column :stays, :exitdate, :date
  	add_column :stays, :totaldays, :integer
  end
end
