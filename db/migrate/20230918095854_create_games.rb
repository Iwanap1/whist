class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.date :date
      t.string :players

      t.timestamps
    end
  end
end
