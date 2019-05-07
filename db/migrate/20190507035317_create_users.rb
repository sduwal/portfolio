class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :description
      t.string :occupation

      t.timestamps
    end
  end
end
