class CreateFulfillmentReports < ActiveRecord::Migration[5.2]
  def change
    create_table :fulfillment_reports do |t|
      t.timestamps
      t.boolean :personA, null: false
      t.boolean :personB, null: false
    end
    add_reference :fulfillment_reports, :created_by, foreign_key: { to_table: :users },null: false
    add_reference :fulfillment_reports, :agreement,null: false
  
  end
end
