class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.string :field
      t.date :from
      t.date :to
      t.references :user, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
