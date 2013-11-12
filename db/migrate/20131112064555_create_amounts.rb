class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.string :one
      t.string :two
      t.string :result

      t.timestamps
    end
  end
end
