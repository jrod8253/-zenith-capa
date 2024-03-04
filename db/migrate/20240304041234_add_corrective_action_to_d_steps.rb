class AddCorrectiveActionToDSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :d_steps, :corrective_action, null: false, foreign_key: true
  end
end
