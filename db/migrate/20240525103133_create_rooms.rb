class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.string :status
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
