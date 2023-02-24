class RemovePhoneNumberColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :phone_number, :string
  end
end
