class ImprovementPlan < ApplicationRecord
  # Direct associations

  has_many   :leaderships,
             :class_name => "Collaboration",
             :dependent => :destroy

  has_many   :goals,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  validates :user_id, :presence => true

end
