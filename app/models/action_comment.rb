class ActionComment < ApplicationRecord
  # Direct associations

  belongs_to :action_step

  belongs_to :user

  # Indirect associations

  # Validations

end
