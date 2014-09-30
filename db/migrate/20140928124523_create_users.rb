class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :sex
      t.date :birthdate
      t.string :civil_status
      t.string :personal_email
      t.string :rc_email
      t.string :address
      t.string :city
      t.string :province
      t.string :zip
      t.string :home_number
      t.string :alt_number
      t.string :spouse_name
      t.string :emergency_contact_name
      t.string :emergency_contact_number
      t.string :emp_num
      t.string :job_title
      t.string :tin
      t.string :philhealth
      t.string :sss
      t.date :date_hired
      t.date :work_start_date
      t.date :work_end_date
      t.boolean :status

      t.timestamps
    end
  end
end
