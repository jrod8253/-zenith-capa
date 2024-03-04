class AddUserReferenceToCorrectiveActions < ActiveRecord::Migration[7.0]
  def change
    add_reference :corrective_actions, :user, null: false, foreign_key: true
  end
end
