json.array!(@website_services) do |website_service|
  json.extract! website_service, :id, :place_id, :redirect_url
  json.url website_service_url(website_service, format: :json)
end
