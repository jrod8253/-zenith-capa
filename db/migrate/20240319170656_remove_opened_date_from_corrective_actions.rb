class RemoveOpenedDateFromCorrectiveActions < ActiveRecord::Migration[7.0]
  change_table :corrective_actions do |t|
    t.remove :opened_date
  end
end
