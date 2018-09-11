class AccountabilityPeriod < ApplicationRecord
  belongs_to :pair
  belongs_to :created_by, class_name: "User", foreign_key: "created_by_id"
  belongs_to :validated_by, class_name: "User", foreign_key: "validated_by_id"
end
