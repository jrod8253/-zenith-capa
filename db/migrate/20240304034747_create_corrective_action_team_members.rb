class CreateCorrectiveActionTeamMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :corrective_action_team_members do |t|

      t.timestamps
    end
  end
end
