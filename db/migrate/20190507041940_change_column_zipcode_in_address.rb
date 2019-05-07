class ChangeColumnZipcodeInAddress < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :zipcode, :Integer
  end
end
