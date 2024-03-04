class CreateDSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :d_steps do |t|
      t.string :name
      t.integer :order
      t.text :description
      t.boolean :is_completed

      t.timestamps
    end
  end
end
