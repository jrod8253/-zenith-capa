class CorrectiveAction < ApplicationRecord
  belongs_to :user
  has_many :d_steps
  has_many :corrective_action_team_members
end
