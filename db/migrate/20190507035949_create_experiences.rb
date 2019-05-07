class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :company
      t.references :address, foreign_key: true
      t.date :start
      t.date :end
      t.references :user, foreign_key: true
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
