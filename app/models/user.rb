class User < ApplicationRecord
  has_secure_password
  has_many :carted_jobs
  validates :user_email, presence: true, uniqueness: true
end
