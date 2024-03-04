class AddTeamMemberToCorrectiveActionTeamMembers < ActiveRecord::Migration[7.0]
  def change
    add_reference :corrective_action_team_members, :team_member, null: false, foreign_key: true
  end
end
