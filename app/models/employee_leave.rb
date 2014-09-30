class EmployeeLeave < ActiveRecord::Base
  belongs_to :leave_type
  belongs_to :user
end
