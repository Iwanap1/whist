class AddLeagueNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :league_name, :string
  end
end
