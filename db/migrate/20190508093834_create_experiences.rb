class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :company
      t.date :start
      t.date :end
      t.string :description
      t.string :link
      t.integer :user_id

      t.timestamps
    end
  end
end
