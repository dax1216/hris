class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.references :user, index: true
      t.references :leave_type, index: true
      t.text :reason
      t.boolean :is_without_pay
      t.boolean :is_supervisor_approved
      t.datetime :leave_time_start
      t.datetime :leave_time_end
      t.boolean :status

      t.timestamps
    end
  end
end
