class Listing < ApplicationRecord
  validate :overlaping_reservation?
  validates :available_beds, presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :description, presence: true, length: { maximum: 140 }
  validates :welcome_message, presence: true
  belongs_to :user
  belongs_to :city
  has_many :reservations

  def overlaping_reservation?
    other_bookings = Reservation.all
    is_overlaping = other_bookings.any? do |other_booking|
      duration.overlaping?(other_booking.duration)
    end
    errors.add(:overlaps_with_other) if is_overlaping
  end
   # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée

end