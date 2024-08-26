class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :in_date
      t.string :in_time
      t.string :out_date
      t.string :out_time
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
