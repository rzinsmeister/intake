class LangColumnAdd < ActiveRecord::Migration
  def change
		add_column :entrants, :language, :string
  end
end
