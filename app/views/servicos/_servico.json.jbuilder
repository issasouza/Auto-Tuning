json.extract! servico, :id, :descricao, :created_at, :updated_at
json.url servico_url(servico, format: :json)
