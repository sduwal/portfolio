class CreatePersonalawards < ActiveRecord::Migration[5.2]
  def change
    create_table :personalawards do |t|
      t.string :title
      t.string :issuer
      t.string :description
      t.date :from
      t.date :to
      t.integer :user_id

      t.timestamps
    end
  end
end
