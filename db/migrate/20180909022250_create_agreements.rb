class CreateAgreements < ActiveRecord::Migration[5.2]
  def change
    create_table :agreements do |t|
      t.timestamps
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
    end
    add_reference :agreements, :created_by, foreign_key: { to_table: :users },null: false
    add_reference :agreements, :validated_by, foreign_key: { to_table: :users },null: false
    add_foreign_key :agreements, :pairs
  end
end
