class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country

      t.timestamps
    end
  end
end
