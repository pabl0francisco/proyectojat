class CreateSolicituds < ActiveRecord::Migration[6.1]
  def change
    create_table :solicituds do |t|
      t.string :origen
      t.string :destino
      t.datetime :hora
      t.string :titulo
      t.text :descripcion
      t.string :monto_sugerido
      t.string :oferta_driver

      t.timestamps
    end
  end
end
