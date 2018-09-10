class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :pairs, as: :personA, foreign_key: :personA_id    
  has_many :pairs, as: :personB, foreign_key: :personB_id    
  has_many :agreements, as: :created_by, foreign_key: :created_by_id
  has_many :agreements, as: :validated_by, foreign_key: :validated_by_id
  has_many :cancellations, as: :created_by, foreign_key: :created_by_id
end
