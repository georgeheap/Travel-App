class Tour < ApplicationRecord
  belongs_to :destination
  has_many :users, through: :user_tours
  has_many :trips, through: :user_tours
end
