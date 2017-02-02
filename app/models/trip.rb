class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :tours, through: :user_tours
end
