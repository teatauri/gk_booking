class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :img_url
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
