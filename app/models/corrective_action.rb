class CorrectiveAction < ApplicationRecord
  belongs_to :user
  has_many :d_steps
  has_many :corrective_action_team_members

  validates :title, :description, :status, :source, :severity, :date_opened, presence: { message: " field must be provided" }
end
