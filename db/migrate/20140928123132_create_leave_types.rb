class CreateLeaveTypes < ActiveRecord::Migration
  def change
    create_table :leave_types do |t|
      t.string :name
      t.integer :number_of_leaves

      t.timestamps
    end
  end
end
