class CreateCorrectiveActions < ActiveRecord::Migration[7.0]
  def change
    create_table :corrective_actions do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :severity
      t.string :source

      t.timestamps
    end
  end
end
