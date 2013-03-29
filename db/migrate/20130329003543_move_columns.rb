
class MoveColumns < ActiveRecord::Migration
  def up
  	remove_column :entrants, :entrydate
  	remove_column :entrants, :exitdate
		remove_column :entrants, :totaldays
  end
end
