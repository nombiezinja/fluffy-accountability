class CreateAgreements < ActiveRecord::Migration[5.2]
  def change
    create_table :agreements do |t|
      t.timestamps
      t.string :description, null: false 
      t.datetime :start_time
      t.datetime :end_time
      t.references :pair, null: false
    end
  end
end
  