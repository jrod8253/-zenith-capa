class CreateDStepAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :d_step_attachments do |t|
      t.string :file_name
      t.string :title
      t.text :description
      t.string :content_type

      t.timestamps
    end
  end
end
