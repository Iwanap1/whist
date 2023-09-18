class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.integer :bet_sevens
      t.integer :bet_sixes
      t.integer :bet_fives
      t.integer :bet_fours
      t.integer :bet_threes
      t.integer :bet_twos
      t.integer :bet_ones
      t.integer :total_bet
      t.text :all_scores

      t.timestamps
    end
  end
end
