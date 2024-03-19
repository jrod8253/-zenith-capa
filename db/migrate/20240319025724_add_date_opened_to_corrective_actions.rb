class AddDateOpenedToCorrectiveActions < ActiveRecord::Migration[7.0]
  def change
    add_column :corrective_actions, :date_opened, :datetime
  end
end
