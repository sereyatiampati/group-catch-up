class AddPhoneNumberColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :phone_number, :string
    add_index :students, :phone_number
  end
end
