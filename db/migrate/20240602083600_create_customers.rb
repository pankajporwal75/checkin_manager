class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :mobile_number
      t.string :address
      t.integer :total_members
      t.string :id_card
      t.string :status

      t.timestamps
    end
  end
end
