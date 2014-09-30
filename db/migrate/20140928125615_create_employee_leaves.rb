class CreateEmployeeLeaves < ActiveRecord::Migration
  def change
    create_table :employee_leaves do |t|
      t.references :leave_type, index: true
      t.references :user, index: true
      t.integer :available

      t.timestamps
    end
  end
end
