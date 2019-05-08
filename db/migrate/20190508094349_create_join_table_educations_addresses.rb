class CreateJoinTableEducationsAddresses < ActiveRecord::Migration[5.2]
  def change
    create_join_table :educations, :addresses do |t|
      # t.index [:education_id, :address_id]
      # t.index [:address_id, :education_id]
    end
  end
end
