class CreateTableNeeds < ActiveRecord::Migration
	create_table :needs do |t|
		t.column :item, :string
	end
end
