class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :owner_name
      t.integer :mobile_number
      t.string :gst
      t.string :address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
