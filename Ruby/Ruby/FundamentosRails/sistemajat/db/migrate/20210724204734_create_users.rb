class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      
      t.string :password_digest
      t.references :rol, null: false, foreign_key: true

      t.timestamps
    end
  end
end
