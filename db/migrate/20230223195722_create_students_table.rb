class CreateStudentsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :admission_no
      t.string :course
      t.string :height
    end
  end
end