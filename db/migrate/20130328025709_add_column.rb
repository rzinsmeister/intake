class AddColumn < ActiveRecord::Migration
  def change
  	add_column :entrants, :studentid, :integer
  	add_column :entrants, :bus, :string
  	add_column :entrants, :lastcity, :string
  	add_column :entrants, :laststate, :string
  	add_column :entrants, :needs, :string
  	add_column :entrants, :discovery, :string
  	add_column :entrants, :transport, :string
  end
 
end
