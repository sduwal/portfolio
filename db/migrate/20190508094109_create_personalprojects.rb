class CreatePersonalprojects < ActiveRecord::Migration[5.2]
  def change
    create_table :personalprojects do |t|
      t.string :name
      t.string :link
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
