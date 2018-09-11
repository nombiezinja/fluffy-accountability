class CreateAccountabilityPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :accountability_periods do |t|
      t.references :pair, null: false 
      t.timestamps
      t.datetime :end_time
    end
    add_reference :accountability_periods, :created_by, foreign_key: { to_table: :users },null: false
    add_reference :accountability_periods, :validated_by, foreign_key: { to_table: :users }
  end
end
