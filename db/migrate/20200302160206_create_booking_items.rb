class CreateBookingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_items do |t|
      t.string :menu_item_id
      t.string :booking_id

      t.timestamps
    end
  end
end
