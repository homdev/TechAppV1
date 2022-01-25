class CreateCustomer < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :siret
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :logo

      t.timestamps
    end
  end
end
