class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :tours, through: :user_tours


  validate :from_date_after_to_date?

  def from_date_after_to_date?
    if from_date > to_date
      # errors.add :from_date, "must be after start date"
    end
  end
end
