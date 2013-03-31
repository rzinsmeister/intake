class ChangeDataType < ActiveRecord::Migration
  def change
  	change_column :entrants, :studentid, :integer
  end
end
