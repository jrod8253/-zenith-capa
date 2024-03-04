class AddCorrectiveActionToCorrectiveActionTeamMembers < ActiveRecord::Migration[7.0]
  def change
    add_reference :corrective_action_team_members, :corrective_action, null: false, foreign_key: true
  end
end
