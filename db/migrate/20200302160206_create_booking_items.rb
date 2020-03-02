class CreateBookingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_items do |t|
      t.references :menu_item, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
