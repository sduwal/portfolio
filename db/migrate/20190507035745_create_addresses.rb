class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.numeric :zipcode
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
