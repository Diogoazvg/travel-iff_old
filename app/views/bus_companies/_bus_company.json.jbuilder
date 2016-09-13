json.extract! bus_company, :id, :cnpj, :name, :created_at, :updated_at
json.url bus_company_url(bus_company, format: :json)