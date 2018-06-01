class Member < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :profile, presence: true, length: {maximum:20}
  has_secure_password
  has_many :tasks
end

