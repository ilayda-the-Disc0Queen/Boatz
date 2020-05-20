class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :arrive, :leave, presence: true
  # validates :arrive, presence: true
end
