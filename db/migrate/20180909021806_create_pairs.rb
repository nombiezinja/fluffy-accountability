class CreatePairs < ActiveRecord::Migration[5.2]
  def change
    create_table :pairs do |t|
      t.timestamps
      t.boolean :confirmed
    end
    add_reference :pairs, :personA, foreign_key: { to_table: :users },null: false
    add_reference :pairs, :personB, foreign_key: { to_table: :users },null: false
  end
end
