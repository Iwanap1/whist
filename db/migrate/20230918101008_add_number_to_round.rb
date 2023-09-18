class AddNumberToRound < ActiveRecord::Migration[7.0]
  def change
    add_column :rounds, :number, :integer
  end
end
