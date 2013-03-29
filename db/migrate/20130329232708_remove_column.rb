class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :entrants, :needs
  end
end
