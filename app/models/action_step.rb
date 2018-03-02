class ActionStep < ApplicationRecord
  # Direct associations

  has_many   :action_comments,
             :dependent => :destroy

  belongs_to :goal

  # Indirect associations

  # Validations

  validates :goal_id, :presence => true

end
