class CreateRounds < ActiveRecord::Migration[7.0]
  def change
    create_table :rounds do |t|
      t.references :player, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.integer :cards
      t.integer :bet
      t.integer :score
      t.boolean :met_bet

      t.timestamps
    end
  end
end
