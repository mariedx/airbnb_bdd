class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :guest, index: true
      t.references :admin, index: true
      t.timestamps
    end
  end
end
