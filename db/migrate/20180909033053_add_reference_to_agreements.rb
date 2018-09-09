class AddReferenceToAgreements < ActiveRecord::Migration[5.2]
  def change
    add_reference :agreements, :created_by, foreign_key: { to_table: :users },null: false
    add_reference :agreements, :validated_by, foreign_key: { to_table: :users }
  end
end
