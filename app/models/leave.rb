class Leave < ActiveRecord::Base
  belongs_to :user
  belongs_to :leave_type
end
