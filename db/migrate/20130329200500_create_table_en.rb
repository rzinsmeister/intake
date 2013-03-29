class CreateTableEn < ActiveRecord::Migration
  create_table :entrants_needs do |t|
  	t.column :need_id, :integer
  	t.column :entrant_id, :integer
  end
end
