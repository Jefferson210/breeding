json.array!(@sowings) do |sowing|
  json.extract! sowing, :id, :origin, :numSeed, :weight, :week.integer, :hydratation, :calendar
  json.url sowing_url(sowing, format: :json)
end
