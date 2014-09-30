class CreateTimeLogs < ActiveRecord::Migration
  def change
    create_table :time_logs do |t|
      t.references :user, index: true
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps
    end
  end
end
