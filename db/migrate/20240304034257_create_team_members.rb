class CreateTeamMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :team_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :email

      t.timestamps
    end
  end
end
