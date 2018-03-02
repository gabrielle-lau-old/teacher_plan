class Goal < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :improvement_plan_id, :presence => true

  validates :user_id, :presence => true

end
