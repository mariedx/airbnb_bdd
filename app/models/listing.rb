class Listing < ApplicationRecord
  validate :overlaping_reservation?()
  validates :available_beds,
    presence: true, numericality: {only_integer: true, greater_than: 0}
  validates :description,
    presence: true,
    length: { maximum: 140 }
  validates :welcome_message,
    presence: true
  belongs_to :user
  belongs_to :city
  has_many :reservations
  
    def overlaping_reservation?(datetime)
      reservation = Reservation.where('start_date < ? OR end_date > ?', self.start_date, self.end_date)
      return reservation.empty?
      # vérifie dans toutes les réservations du listing s'il y a une réservation qui tombe sur le datetime en entrée
    end
  
end
