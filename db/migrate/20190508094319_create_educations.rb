class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.string :field
      t.date :from
      t.date :to
      t.integer :user_id
      t.float :grade

      t.timestamps
    end
  end
end
