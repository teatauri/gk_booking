class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :admin, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :description
      t.integer :budget
      t.integer :guests
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
