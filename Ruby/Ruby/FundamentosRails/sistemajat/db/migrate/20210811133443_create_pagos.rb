class CreatePagos < ActiveRecord::Migration[6.1]
  def change
    create_table :pagos do |t|
      t.decimal :monto
      t.string :numero_transferencia
      t.decimal :efectivo

      t.timestamps
    end
  end
end
