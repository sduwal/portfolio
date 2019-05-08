class CreateJoinTableExperiencesAddresses < ActiveRecord::Migration[5.2]
  def change
    create_join_table :experiences, :addresses do |t|
      # t.index [:experience_id, :address_id]
      # t.index [:address_id, :experience_id]
    end
  end
end
