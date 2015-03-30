class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :full_name
      t.integer :phone_number
      t.string :email
      t.string :image
      t.text :notes

      t.timestamps
    end
  end
end
