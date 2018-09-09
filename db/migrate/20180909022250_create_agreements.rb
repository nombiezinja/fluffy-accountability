class CreateAgreements < ActiveRecord::Migration[5.2]
  def change
    create_table :agreements do |t|
      t.timestamps
    end
    add_foreign_key :agreements, :pairs
  end
end
