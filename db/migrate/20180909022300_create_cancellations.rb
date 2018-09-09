class CreateCancellations < ActiveRecord::Migration[5.2]
  def change
    create_table :cancellations do |t|

      t.timestamps
    end
  end
end
