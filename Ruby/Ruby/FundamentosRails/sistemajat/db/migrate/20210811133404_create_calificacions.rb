class CreateCalificacions < ActiveRecord::Migration[6.1]
  def change
    create_table :calificacions do |t|
      t.string :valor
      t.text :comentario

      t.timestamps
    end
  end
end
