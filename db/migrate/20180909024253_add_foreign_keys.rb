class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_reference :cancellations, :created_by, foreign_key: { to_table: :users },null: false
    add_reference :cancellations, :validated_by, foreign_key: { to_table: :users },null: false
    add_foreign_key :cancellations, :agreements
    add_foreign_key :attendances, :agreements
    add_foreign_key :attendances, :user
    add_reference :agreements, :created_by, foreign_key: { to_table: :users },null: false
    add_reference :agreements, :validated_by, foreign_key: { to_table: :users },null: false
    add_foreign_key :agreements, :pairs

  end
end
