class CreatePersonalprojects < ActiveRecord::Migration[5.2]
  def change
    create_table :personalprojects do |t|
      t.string :name
      t.string :link
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
