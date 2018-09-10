class Cancellation < ApplicationRecord
  belongs_to :agreement, foreign_key: "agreement_id"
  belongs_to :created_by, class_name: "User", foreign_key: "created_by_id"
end
