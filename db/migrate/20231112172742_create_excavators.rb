class CreateExcavators < ActiveRecord::Migration[7.1]
  def change
    create_table :excavators do |t|

      t.timestamps
    end
  end
end
