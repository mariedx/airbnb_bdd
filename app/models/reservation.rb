class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  belongs_to :guest, class_name: "User"
  belongs_to :admin, class_name: "User"

  validates_presence_of :start_date, :end_date, :listing
  validate :duration
  validate :start_must_be_before_end_date
  
  def duration
    self.start_date - self.end_date
  end

  private

  def start_must_be_before_end_date
      errors.add(:start_date, "must be before end date") unless
      self.start_date < self.end_date
  end 
end


