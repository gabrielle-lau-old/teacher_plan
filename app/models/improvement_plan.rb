class ImprovementPlan < ApplicationRecord
  # Direct associations

  has_many   :leaderships,
             :class_name => "Collaboration",
             :dependent => :destroy

  has_many   :goals,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  has_many   :coaches,
             :through => :leaderships,
             :source => :user

  # Validations

  validates :user_id, :presence => true

end
