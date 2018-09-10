class Agreement < ApplicationRecord
  belongs_to :pair
  belongs_to :created_by, class_name: "User", foreign_key: "created_by_id"
  belongs_to :validated_by, class_name: "User", foreign_key: "validated_by_id"
  has_many :cancellations
  has_many :fulfillment_reports
end
