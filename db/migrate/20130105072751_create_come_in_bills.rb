class CreateComeInBills < ActiveRecord::Migration
  def change
    create_table :come_in_bills do |t|
      t.decimal :money
      t.string :remarks
      t.date :billdate
      t.references :come_in_type

      t.timestamps
    end
    add_index :come_in_bills, :come_in_type_id
  end
end
