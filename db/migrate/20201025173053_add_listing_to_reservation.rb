class AddListingToReservation < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :listing, null: false, foreign_key: true
  end
end
