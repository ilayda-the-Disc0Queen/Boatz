class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :arrive, :leave, presence: true
  def days_booked
    days_booked = (self.leave.to_time - self.arrive.to_time).to_i/86400
  end
  def total_price
    days_booked * self.boat.price
  end
end
