class DStep < ApplicationRecord
  belongs_to :corrective_action
  has_many :d_step_attachments
end
