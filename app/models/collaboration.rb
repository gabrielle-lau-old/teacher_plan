class Collaboration < ApplicationRecord
  # Direct associations

  belongs_to :improvement,
             :class_name => "ImprovementPlan",
             :foreign_key => "improvement_plan_id"

  belongs_to :user

  # Indirect associations

  # Validations

  validates :improvement_plan_id, :presence => true

  validates :user_id, :presence => true

end
