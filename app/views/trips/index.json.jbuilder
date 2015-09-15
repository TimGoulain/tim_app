json.array!(@offers) do |offer|
  json.extract! offer, :id, :position, :employer_id, :started_at, :ended_at, :sector_id, :created_by_id
  json.url offer_url(offer, format: :json)
end
