class Pair < ApplicationRecord
  belongs_to :personA, class_name: "User", foreign_key: "personA_id"
  belongs_to :personB, class_name: "User", foreign_key: "personB_id"
  has_many :agreements
  has_many :accountability_periods
end
