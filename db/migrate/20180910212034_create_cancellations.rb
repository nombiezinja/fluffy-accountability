class CreateCancellations < ActiveRecord::Migration[5.2]
  def change
    create_table :cancellations do |t|
      t.timestamps
      t.references :agreement, null: false
    end
    add_reference :cancellations, :created_by, foreign_key: { to_table: :users },null: false
  end
end
