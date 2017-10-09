class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :sex
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :age
      t.string :phone_number
      t.string :time
      t.string :adress
      t.string :city_index
      t.string :city_name

      t.timestamps
    end
  end
end
