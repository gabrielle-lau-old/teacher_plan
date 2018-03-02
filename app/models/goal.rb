class Goal < ApplicationRecord
  # Direct associations

  has_many   :action_steps,
             :dependent => :destroy

  belongs_to :improvement_plan

  belongs_to :user

  # Indirect associations

  # Validations

  validates :improvement_plan_id, :presence => true

  validates :user_id, :presence => true

end
