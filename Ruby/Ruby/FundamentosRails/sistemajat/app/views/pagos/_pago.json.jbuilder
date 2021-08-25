json.extract! pago, :id, :monto, :numero_transferencia, :efectivo, :created_at, :updated_at
json.url pago_url(pago, format: :json)
