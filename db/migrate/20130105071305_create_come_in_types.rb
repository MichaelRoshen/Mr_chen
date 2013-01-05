class CreateComeInTypes < ActiveRecord::Migration
  def change
    create_table :come_in_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
