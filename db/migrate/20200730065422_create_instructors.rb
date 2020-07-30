class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :email
      t.string :phonenumber

      t.timestamps
    end
  end
end
