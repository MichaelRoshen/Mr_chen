class CreateCostBills < ActiveRecord::Migration
  def change
    create_table :cost_bills do |t|
      t.decimal :money
      t.string :remarks
      t.date :billdate
      t.references :cost_type

      t.timestamps
    end
    add_index :cost_bills, :cost_type_id
  end
end
