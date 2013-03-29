
class MoveColumns < ActiveRecord::Migration
  def change
  	remove_column :entrants, :entrydate
  	remove_column :entrants, :exitdate
  	remove_column :entrants,:totaldays
 
  	add_column :stays, :entrydate
  	add_column :stays, :exitdate
  	add_column :stays, :totaldays
  end
end
