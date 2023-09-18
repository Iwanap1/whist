class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :player_one
      t.integer :player_two
      t.integer :player_three
      t.integer :player_four
      t.integer :player_five
      t.integer :player_six
      t.integer :player_seven

      t.timestamps
    end
  end
end
