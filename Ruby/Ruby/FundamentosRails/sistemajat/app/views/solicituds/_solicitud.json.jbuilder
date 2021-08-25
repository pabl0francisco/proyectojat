json.extract! solicitud, :id, :origen, :destino, :hora, :titulo, :descripcion, :monto_sugerido, :oferta_driver, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
