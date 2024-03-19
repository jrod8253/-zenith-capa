class AddOpenedDateToCorrectiveAction < ActiveRecord::Migration[7.0]
  def change
    add_column :corrective_actions, :opened_date, :date
  end
end
