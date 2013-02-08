class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :entrants, :contactid, :contact_id
  end
end
