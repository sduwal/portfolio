class AddGradeAndAddressToEducation < ActiveRecord::Migration[5.2]
  def change
    add_column :educations, :grade, :float
    add_reference :educations, :addresses, foreign_key: true
  end
end
