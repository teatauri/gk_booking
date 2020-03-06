class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :status, null: false, foreign_key: true, on_delete: :nullify
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.integer :budget
      t.integer :guests
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
