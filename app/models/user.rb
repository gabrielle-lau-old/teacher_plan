class User < ApplicationRecord
  # Direct associations

  has_many   :action_comments,
             :dependent => :destroy

  has_many   :goal_comments,
             :dependent => :destroy

  has_many   :collaborations,
             :dependent => :destroy

  has_many   :goals,
             :dependent => :destroy

  has_many   :improvement_plans,
             :dependent => :destroy

  # Indirect associations

  has_many   :coaches,
             :through => :improvement_plans,
             :source => :coaches

  has_many   :trainees,
             :through => :trainee_improvements_plans,
             :source => :user

  has_many   :trainee_improvements_plans,
             :through => :collaborations,
             :source => :improvement

  # Validations

  validates :first_name, :presence => true

  validates :last_name, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
