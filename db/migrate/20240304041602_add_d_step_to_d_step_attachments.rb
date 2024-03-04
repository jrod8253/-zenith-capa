class AddDStepToDStepAttachments < ActiveRecord::Migration[7.0]
  def change
    add_reference :d_step_attachments, :d_step, null: false, foreign_key: true
  end
end
