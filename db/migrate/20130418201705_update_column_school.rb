class UpdateColumnSchool < ActiveRecord::Migration
  def change
  	rename_column :entrants, :lastschool, :lastschool_id
  	rename_column :entrants, :mpsschool, :mpsschool_id
  end
end
