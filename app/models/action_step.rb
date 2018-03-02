class ActionStep < ApplicationRecord
  # Direct associations

  belongs_to :goal

  # Indirect associations

  # Validations

  validates :goal_id, :presence => true

end
